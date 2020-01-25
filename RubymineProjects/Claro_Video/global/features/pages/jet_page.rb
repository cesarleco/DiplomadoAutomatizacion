require 'rubygems'
require 'capybara'
require_relative '../components/jet_components'
require_relative '../../../helpers/utils'

class JetPage
  include Capybara
  extend Capybara
  include Capybara::DSL
  extend Capybara::DSL

  def initialize()
    @elements_title = JetComponents::Jet_Elements::TILE_PAGE
    @elements_pagina = JetComponents::Jet_Elements::TILE_PAGINA
    @elements_carrusel = JetComponents::Jet_Elements::TILE_CARRUSEL
    @elements_options = JetComponents::Jet_Elements::IMAGEN_CARRUSEL

  end

  @@instance = JetPage.new

  def self.instance
    return @@instance
  end


  def validate_content
    @elements_title[Utils.country].each_value do |elements|
      element = find(elements[0].to_sym,elements[1])
      Utils.highlight(element,"yellow",1)
    end
    puts "Se validaron correctamente todos los elementos"
  end

  def find_element(elements, element)
    elements[Utils.country].each do |key, value|
      if key.eql? element
        return find(value[0].to_sym, value[1].to_s)
      end
    end
  end


  def scrolling_find_element
    scroll_to(find(:xpath,"(//p[contains(.,'Contáctanos llamando sin costo al 800 252 9999')])[1]"))
  end

  def scrolling_find_url
    scroll_to(find(:xpath,"//h4[contains(.,'Nominados Oscar 2020')]"))
  end

  def scroll_to(element)
    script = <<-JS
      arguments[0].scrollIntoView(true);
    JS

    Capybara.current_session.driver.browser.execute_script(script, element.native)
  end


    # def valid_url
    #   url = URI.parse(current_url).request_uri
    #   puts "La url obtenida es #{url}"
    # end
    #
    def valid_url
      url = Capybara.current_session.driver.browser.current_url
      puts "La url obtenida es #{url}"
    end


  def validate_url
    element1 = find(:xpath, "/html/body/div[2]/div/div[1]/div[2]/div/div/section[3]/div[2]/div/div/div[1]/ul/li[1]/div/div/div/div/div/div/a/img[1]")
    puts "La primer url obtenida es #{element1[:src]}"
    element2 = find(:xpath, "/html/body/div[2]/div/div[1]/div[2]/div/div/section[3]/div[2]/div/div/div[1]/ul/li[2]/div/div/div/div/div/div/a/img[1]")
    puts "La segunda url obtenida es #{element2[:src]}"
    element3 = find(:xpath, "/html/body/div[2]/div/div[1]/div[2]/div/div/section[3]/div[2]/div/div/div[1]/ul/li[3]/div/div/div/div/div/div/a/img[1]")
    puts "La tercera url obtenida es #{element3[:src]}"
    element4 = find(:xpath, "/html/body/div[2]/div/div[1]/div[2]/div/div/section[3]/div[2]/div/div/div[1]/ul/li[4]/div/div/div/div/div/div/a/img[1]")
    puts "La cuarta url obtenida es #{element4[:src]}"
  end


def comparacion_url
  url = Capybara.current_session.driver.browser.current_url
  element = find(:xpath, "/html/body/div[2]/div/div[1]/div[2]/div/div/section[3]/div[2]/div/div/div[1]/ul/li[1]/div/div/div/div/div/div/a/img[1]")[:src]
  if url.to_s == 9.to_s
    puts "La url´s son iguales"
  else
    puts "La url´s no coinciden"
  end
end


  def valid_elements_scroll
    @elements_carrusel[Utils.country].each_value do |elements|
        element = find(elements[0].to_sym,elements[1])
        scroll_to(element)
        Utils.highlight(element,"yellow",1)
      end
      puts "Se validaron correctamente todos los elementos"
  end



  def validate_pagina
    @elements_pagina[Utils.country].each_value do |elements|
      element = find(elements[0].to_sym,elements[1])
      Utils.highlight(element,"yellow",1)
    end
    puts "Se validaron correctamente todos los elementos"
  end



  #def comparar_url
  # element = page.find(:xpath, "/html/body/div[2]/div/div[1]/div[2]/div/div/section[3]/div[2]/div/div/div[1]/ul/li[1]/div/div/div/div/div/div/a/img[1]")
  #Info.basic element[:href].to_s
  #url = URI.parse(current_url).request_uri.should == have_current_path(people_path(:href => 'name'))
  #puts "Las url´s coinciden #{url}"
  #end

#if url.to_s.eql?browser.current_url.to_s
 # puts "Las url's conciden"
#else
 # raise "Las url's no conciden"
#end
end