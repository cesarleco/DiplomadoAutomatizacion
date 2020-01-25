require 'fileutils'
require 'yaml'


#Método para Limpiar la cache del browser
def clear_cache
  if Utils.browser.to_s.downcase.strip == 'mozilla'
    page.execute_script('if (localStorage && localStorage.clear) localStorage.clear()')
  else
    page.execute_script('window.localStorage.clear;')
  end
  Info.basic 'Clear Cache'
end

#Método con funcion javascript para validar si existe o no un elemento en la pagina.
# es mas rapido que los metodos "assert_element_exists(element_exists)", "element_exists(find_by, element)"; ya que no espera por un time out  # Método que selecciona y lleva a la pagina de un contenido buscado mediante el método: "search_by_content_type(content_type)"
# @params
#   * :find_by: tipo de busqueda en el DOM de la page:
#     - id
#     - class
#     - tag
#     - name
#   * :find_value: valor del tipo find_by. Ej. para buscar un elemento por ID entonces se debe mandar el ID del elemento como esta en el DOM. si se busca por class entonces se debe poner el nombre de la classname por la cual se buscara el elemento
#   * :expected_target: atributo que se espera obtener de un elemento, el textcontent, classname, tag, etc.
#   * :expected_result: valor del atributo definido en expected_target
def js_element_exist(find_by, find_value, expected_target, expected_result)
  expected_result = expected_result.to_s.downcase.strip
  get_element_by = js_element_exist_get_find_by(find_value)
  condition = js_element_exist_get_expected_target(expected_target, expected_result)
  return "#{get_element_by}
          result = false;
          if(el.length == 0 ){
             result = false;
          } else{
            for (var i = 0; i <= (el.length - 1); i++){
              if ( #{condition} ){
                result = true;
                break;
              }
            }
          }
          result;"
end

#Método que obtiene el find by para la busqueda de un elemento, este alimenta al método "js_element_exist(find_by, find_value, expected_target, expected_result)"
def js_element_exist_get_find_by(find_value)
  case find_by
    when 'id' then
      get_element_by = "el = document.getElementById('#{find_value}'); "
    when 'class' then
      get_element_by = "el = document.getElementsByClassName('#{find_value}'); "
    when 'tag' then
      get_element_by = "el = document.getElementsByTagName('#{find_value}'); "
    when 'name' then
      get_element_by = "el = document.getElementsByName('#{find_value}'); "
    else
      puts "js_element_exist_get_find_by => find_by => Valor de busqueda no valido"
      return false
  end
end

#Método que obtiene el expected_target para la busqueda de un elemento, este alimenta al método "js_element_exist(find_by, find_value, expected_target, expected_result)"
def js_element_exist_get_expected_target(expected_target, expected_result)
  case expected_target
    when 'text_equals' then
      condition = "el[i].textContent.toLowerCase().trim() ==  '#{expected_result}' "
    when 'text_diferent' then
      condition = "el[i].textContent.toLowerCase().trim() !=  '#{expected_result}' "
    when 'text_contains' then
      condition = "el[i].textContent.toLowerCase().trim().includes('#{expected_result}') "
    when 'text_is_not_empty' then
      condition = "el[i].textContent != null && el[i].textContent != '' "
    when 'class_equals' then
      condition = "el[i].className.toString().toLowerCase().trim() == '#{expected_result}' "
    when 'class_is_not_null' then
      condition = "el[i].className != null "
    else
      puts "js_element_exist_get_expected_target => expected_target => Valor para expected_target no valido"
      return false
  end
end

#Método con funcion javascript para hacer click en el contenido buscado
# si 'el' > 0 y el 'searchable_content' == first, entonces se esta usando el step 'I select any result'. se selecciona el 1er resultado de la busqueda.
# si 'el' > 0 y el 'searchable_content' != first, entonces se busca el contenido que haga match con 'searchable_content' y se hace click a este elemento
# si las condiciones anteriores no se cumplieron se verifica, si result = 'false', entonces se busca el contenido donde tenga 'textcontains' similar con 'searchable_content' y se hace click a este elemento
# si las condiciones anteriores no se cumplen entonces se retorna 'false'
def js_click_searchable_content(searchable_content)
  return "searchable_content = '#{searchable_content}'
          el = document.getElementsByClassName('wgt-label search-result-grid-btn-name');
          result = false;
          if(el.length > 0 && searchable_content == 'first'){
             result = true;
             el[0].click();
          }
          if(el.length > 0 && searchable_content != 'first'){
            for (var i = 0; i <= (el.length - 1); i++){
              if ( el[i].textContent.toLowerCase().trim() == searchable_content.toLowerCase().trim() ){
                result = true;
                el[i].click();
              }
            }
            if( result == false ){
              for (var i = 0; i <= (el.length - 1); i++){
                if ( el[i].textContent.toLowerCase().trim().indexOf( searchable_content.toLowerCase().trim() ) != -1 ){
                  result = true;
                  el[i].click();
                }
              }
            }
          }
          return result;"
end

#Método con funcion javascript para validar si alguno de los grids de resultados de busqueda, esta visible
# si la funcion retorna "true", entonces esta visible resultados de busqueda de: sugerencias, contenidos, series, talentos
def js_assert_search_result_is_shows
  return "res_sugerencias = document.getElementById('search-result1');
          res_contenido = document.getElementById('search-result2');
          res_series = document.getElementById('search-result3');
          res_talentos = document.getElementById('search-result4');
          result = false;
          if( res_sugerencias.style.display = 'none'
                  || res_contenido.style.display = 'none'
                  || res_series.style.display = 'none'
                  || res_talentos.style.display = 'none'
          ){
              result = false;
          } else{
              result = true;
          }
          return result;"
end

def send_keys_a_z_1_0(key)
  return "var key = '#{key}'
          result = false;
          el = document.getElementsByClassName('wgt-label');
            for (var i = 0; i <= (el.length - 1); i++){
              if ( el[i].textContent ==  key ){
                el[i].parentNode.click();
                result = true;
              }
            }
          return result;"
end

#Método que ejecuta un js, si 'loading-badge' que es la className para identificar al spinner tine la propiedad display != 'none', entonces el spinner se esta mostrando y regresa true
def js_infinity_spinner
  return "el = document.getElementsByClassName('loading-badge');
          result = false;
          if( el.length >= 0) {
            if ( el[0].style.display != 'none' ){
              result = true;
            }
          }
          return result;"
end

#Método para hacer back en una page
def js_back_page
  return "window.history.back();"
end

#Método para obtener la url donce se encuentra actualmente la pagina
def js_get_current_url
  return "return window.location.href;"
end

#Método para hacer click en un episodio de serie desde player
def js_player_select_episode(episode)
  return "el = document.getElementsByClassName('#{episode}');
          result = false;
          if( el.length > 0 ){
            el[0].click();
            result = true;
          }
          return result;"
end
