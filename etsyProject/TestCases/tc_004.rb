require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Pages/Login_validation_messages.rb'
require '../Assertions/assert.rb'

class TC_004 < AutomationBase # Esta clase está herednado de la clase automation_base, la cual tiene un initialize (constructor) y lo ejecuta
  def test_case_04
    form_login = Login_validation_messages.new(@@driver)

    #Verify URL
    validation = Assert.new #clase Assert
    res = validation.validateURL(@@driver, "https://www.etsy.com/")
    assert_true(res, "[Error] Home page URL does not match the expected")

    form_login.Singing_up
    sleep(3)

    form_login.Login_button
    sleep(5)


    compare = validation.compareText(form_login.email_form, "Can't be blank.")
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(2)

    compare = validation.compareText(form_login.password_form, "Can't be blank.")
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(2)

end

end