require 'selenium-webdriver'
class Search
  @driver
  def initialize(driver)
    @driver = driver
  end

  def busqueda(anillo)
    @driver.find_element(:css, "#global-enhancements-search-query").send_keys(anillo)
    @driver.find_element(:css, "#gnav-search > div > div.wt-input-btn-group.global-enhancements-search-input-btn-group.wt-menu__trigger > button").click
  end

  def carrito(click)
    @driver.find_element(:css, "#gnav-header-inner > div.flex-shrink-0 > nav > ul > li:nth-child(2) > span").click
    end

  def inicio(click)
    @driver.find_element(:css, "#gnav-header-inner > div.flex-shrink-0 > nav > ul > li:nth-child(1) > button").click
  end

  def session(click)
    @driver.find_element(:css, "#join-neu-form > div:nth-child(7) > div > div:nth-child(6) > div > button").click
  end

  def back(click)
    @driver.find_element(:css, "#join-neu-overlay").back
  end

  def home(click)
    @driver.find_element(:css, "#logo > svg > path").click
  end

  def footer(click)
    @driver.find_element(:css, "##collage-footer > footer > div:nth-child(4) > nav > div > div > div:nth-child(1) > ul > li:nth-child(1) > a > span").click
  end

end