require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Pages/Footer_validations.rb'
require '../Assertions/assert.rb'

class TC_005 < AutomationBase # Esta clase está herednado de la clase automation_base, la cual tiene un initialize (constructor) y lo ejecuta
  def test_case_05
    validationsEnd = Footer_validations.new(@@driver)

    #Verify URL
    validation = Assert.new #clase Assert
    res = validation.validateURL(@@driver, "https://www.etsy.com/")
    assert_true(res, "[Error] Home page URL does not match the expected")


    #First click
    validationsEnd.gift_card_click

    compare = validation.compareText(@@driver.title, 'Etsy - Gift Cards')
    assert_true(compare, "[Error] Message does not match the expected")


    res = validation.validateURL(@@driver, "https://www.etsy.com/giftcards?ref=ftr")
    assert_true(res, "[Error] Home page URL does not match the expected one")


    compare = validation.compareText(validationsEnd.getTextGiftCard, 'Give the gift of Etsy')
    assert_true(compare, "[Error] Message does not match the expected")

    #Second click
    validationsEnd.sell_In_Etsy_click

    compare = validation.compareText(@@driver.title, 'Learn How to Sell on Etsy')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)

    res = validation.validateURL(@@driver, "https://www.etsy.com/sell?ref=ftr")
    assert_true(res, "[Error] Home page URL does not match the expected")


    compare = validation.compareText(validationsEnd.getTextSellInEtsy,'Join a creative marketplace where more than 33 million buyers around the world shop for unique items')
    assert_true(compare, "[Error] Message does not match the expected")

    #Third click
    validationsEnd.Afilliated_click
    compare = validation.compareText(@@driver.title, 'Etsy - Affiliates')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)

    res = validation.validateURL(@@driver, "https://www.etsy.com/affiliates?ref=ftr")
    assert_true(res, "[Error] Home page URL does not match the expected")


    compare = validation.compareText(validationsEnd.getTextAfilliated, 'Join our Affiliate Program!')
    assert_true(compare, "[Error] Message does not match the expected")

    #Fourth click
    validationsEnd.Etsy_Inc_click
    compare = validation.compareText(@@driver.title, 'About Etsy')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)

    res = validation.validateURL(@@driver, "https://www.etsy.com/about?ref=ftr")
    assert_true(res, "[Error] Home page URL does not match the expected")

    sleep(3)
    compare = validation.compareText(validationsEnd.getTextEtsyInc, 'Keep Commerce Human')
    assert_true(compare, "[Error] Message does not match the expected")


    #Fifth click
    validationsEnd.Politicians_click
    compare = validation.compareText(@@driver.title, 'Our House Rules | Etsy')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)

    res = validation.validateURL(@@driver, "https://www.etsy.com/legal?ref=ftr")
    assert_true(res, "[Error] Home page URL does not match the expected")

    sleep(3)
    compare = validation.compareText(validationsEnd.getTextPoliticians, 'Our House Rules')
    assert_true(compare, "[Error] Message does not match the expected")

    #Sixth click
    validationsEnd.Job_click
    compare = validation.compareText(@@driver.title, 'Careers at Etsy')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)

    res = validation.validateURL(@@driver, "https://www.etsy.com/careers?ref=ftr#engineering")
    assert_true(res, "[Error] Home page URL does not match the expected")

    sleep(3)
    compare = validation.compareText(validationsEnd.getTextJob, 'Build something that matters.')
    assert_true(compare, "[Error] Message does not match the expected")

    #Seventh click
    validationsEnd.Press_click
    compare = validation.compareText(@@driver.title, 'Etsy: Press')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)

    res = validation.validateURL(@@driver, "https://www.etsy.com/press?ref=ftr")
    assert_true(res, "[Error] Home page URL does not match the expected")

    sleep(2)
    compare = validation.compareText(validationsEnd.getTextPress, 'Press')
    assert_true(compare, "[Error] Message does not match the expected")


    #Eigth click
    validationsEnd.Impact_click
    compare = validation.compareText(@@driver.title, 'Etsy Carbon-Offset Shipping: Delivering a world of good')
    assert_true(compare, "[Error] Message does not match the expected")
    sleep(3)

    res = validation.validateURL(@@driver, "https://www.etsy.com/impact?ref=ftr")
    assert_true(res, "[Error] Home page URL does not match the expected")

    sleep(2)
    compare = validation.compareText(validationsEnd.getTextImpact, 'Carbon-Offset Shipping: Delivering a world of good')
    assert_true(compare, "[Error] Message does not match the expected")

end

end