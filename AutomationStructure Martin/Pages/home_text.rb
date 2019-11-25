require 'selenium-webdriver'
class HomeText
  @driver
  def initialize(driver)
    @driver = driver
  end

  def getTextOne
    return @driver.find_element(css: '#content > div:nth-child(1) > div > h1').text
  end

  def getText2
    return @driver.find_element(css: '#content > div.col-group.body-max-width > div > div > a > div > h1').text
  end

  def getText3
    return @driver.find_element(css: '#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(1) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end

  def getText4
    return @driver.find_element(css: '#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(2) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end

  def getText5
    return @driver.find_element(css: '#content > div:nth-child(3) > div > div > div > div > div.col-group.col-flush > div:nth-child(3) > div > div.col-group > div > h3 > span.pl-xs-2.mt-xs-1').text
  end

  def getText6
    return @driver.find_element(css: '#aria-join_neu_email_field-error').text
  end

  def getText7
    return @driver.find_element(css: '#aria-join_neu_password_field-error').text
  end
end
