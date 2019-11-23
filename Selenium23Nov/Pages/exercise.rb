require 'selenium-webdriver'

class Exercise
  @driver
  def initialize driver
    @driver = driver
  end

  def searched
    dri = @driver.find_element(:xpath, "//*[@id=\"collage-footer\"]/footer/div[3]/div[2]/div[1]")
    @driver.action.move_to(dri).perform
  end

  def searchPrensa
    dri = @driver.find_element(:xpath, "//*[@id=\"collage-footer\"]/footer/div/div[2]/div[1]")
    @driver.action.move_to(dri).perform
  end

  def text1
    @driver.find_element(:xpath, "//*[@id=\"content\"]/div[1]/div/h1").text
  end

  def text2
    @driver.find_element(:xpath, "//*[@id=\"content\"]/div[2]/div/div/a/div/h1").text
  end

  def text3
    @driver.find_element(:xpath, "//*[@id=\"content\"]/div[3]/div/div/div/div/div[2]/div[1]/div/div[1]/div/h3/span[2]").text
  end

  def text4
    @driver.find_element(:xpath, "//*[@id=\"content\"]/div[3]/div/div/div/div/div[2]/div[2]/div/div[1]/div/h3/span[2]").text
  end

  def text5
    @driver.find_element(:xpath, "//*[@id=\"content\"]/div[3]/div/div/div/div/div[2]/div[3]/div/div[1]/div/h3/span[2]").text
  end

  def search text
    @driver.find_element(:xpath, "//*[@id=\"global-enhancements-search-query\"]").send_keys(text)
    @driver.find_element(:xpath, "//*[@id=\"gnav-search\"]/div/div[1]/button").click
  end

  def touchcar
    @driver.find_element(:xpath, "//*[@id=\"gnav-header-inner\"]/div[4]/nav/ul/li[2]/span").click
    sleep 4
    @driver.find_element(:xpath, "//*[@id=\"newempty\"]/div/div/div").text
  end

  def foundelement
    dri = @driver.find_element(:xpath, "//*[@id=\"content\"]/div/div[1]/div/div/div[2]/div[2]/div[3]/div/ul/li[4]/div/a/div[2]/div/h2")
    @driver.action.move_to(dri).perform
    sleep 2
    return dri.text
  end

  def btnlogin
    @driver.find_element(:xpath, "//*[@id=\"gnav-header-inner\"]/div[4]/nav/ul/li[1]/button").click
    sleep 2
    @driver.find_element(:xpath, "//*[@id=\"join-neu-form\"]/div[1]/div/div[5]/div/button").click
    sleep 2
  end

  def txterrormail
    @driver.find_element(:xpath, "//*[@id=\"aria-join_neu_email_field-error\"]").text
  end

  def txterrorpass
    sleep 2
    @driver.find_element(id: 'aria-join_neu_password_field-error').text
  end

  def esc
    @driver.action.send_keys(:escape).perform
    sleep 2
    @driver.find_element(:xpath, "//*[@id=\"gnav-header-inner\"]/div[1]/div/a").click
  end

  #pag1
  def touchelemt1
    @driver.find_element(:xpath, "//*[@id=\"collage-footer\"]/footer/div[3]/nav/div/div/div[1]/ul/li[1]/a").click
  end

  def footerpage1
    @driver.find_element(:xpath, "//*[@id=\"page-title\"]").text
  end


  #pag2
  def touchelemt2
    @driver.find_element(:xpath, "//*[@id=\"collage-footer\"]/footer/div[3]/nav/div/div/div[2]/ul/li[1]/a").click
  end

  def footerpage2
    @driver.find_element(:xpath, "//*[@id=\"content\"]/div[1]/div[1]/div/div/h1").text
  end

  #pag3
  def touchelemt3
    @driver.find_element(:xpath, "//*[@id=\"collage-footer\"]/footer/div[3]/nav/div/div/div[2]/ul/li[4]/a").click
  end

  def footerpage3
    @driver.find_element(:xpath, "//*[@id=\"content\"]/div/div[2]/div/h1").text
  end

  #pag4
  def touchelemt4
    @driver.find_element(:xpath, "//*[@id=\"collage-footer\"]/footer/div[3]/nav/div/div/div[3]/ul/li[1]/a").click
  end

  def footerpage4
    @driver.find_element(:xpath, "//*[@id=\"content\"]/div/div[2]/div[1]/div[1]/div[2]/h1").text
  end

  #pag5
  def touchelemt5
    @driver.find_element(:xpath, "//*[@id=\"collage-footer\"]/footer/div[3]/nav/div/div/div[3]/ul/li[2]/a").click
  end

  def footerpage5
    @driver.find_element(:xpath, "//*[@id=\"content\"]/div/div[1]/div/hgroup/h1").text
  end

  #pag6
  def touchelemt6
    @driver.find_element(:xpath, "//*[@id=\"collage-footer\"]/footer/div[3]/nav/div/div/div[3]/ul/li[4]/a").click
  end

  def footerpage6
    @driver.find_element(:xpath, "//*[@id=\"content\"]/div/div[2]/div[2]/div/h1/span").text
  end

  #pag7
  def touchelemt7
    @driver.find_element(:xpath, "//*[@id=\"collage-footer\"]/footer/div[3]/nav/div/div/div[3]/ul/li[5]/a").click
  end

  def footerpage7
    @driver.find_element(:xpath, "//*[@id=\"content\"]/div[2]/div[2]/h1").text
  end

  #pag8
  def touchelemt8
    @driver.find_element(:xpath, "//*[@id=\"collage-footer\"]/footer/div/nav/div/div/div[3]/ul/li[6]/a").click
  end

  def footerpage8
    @driver.find_element(:xpath, "//*[@id=\"content\"]/div/div[2]/div/h1").text
  end


end