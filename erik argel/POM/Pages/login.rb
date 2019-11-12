require 'selenium-webdriver'

class Login

  @chromedriver
  def initialize(driver)
    @chromedriver = driver
  end

  def enterUsrName(username)
    @chromedriver.find_element(id: 'email').send_keys(username)
  end

  def enterPwd(password)

    @chromedriver.find_element(id: 'pass').send_keys(password)
  end

  def clickSignIn

    @chromedriver.find_element(id: 'u_0_2').click()
  end
end