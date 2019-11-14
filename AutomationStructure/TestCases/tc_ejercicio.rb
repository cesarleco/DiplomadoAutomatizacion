require '../Pages/Ejercicio.rb'
require 'selenium-webdriver'
require 'test-unit'
require '../BaseFiles/automation_base.rb'
require '../Assertions/assert.rb'

class TC_Ejercicio <TestAutomationBase
  def test_case_Excercise
    exercise = Exercise.new (@@driver)

    assert = Assert.new
    res = assert.validateURL(@@driver, "https://www.redbus.in/")
    assert_true(res, "[Error] Home page URL does not match the expected one")

    exercise.chooseFrom('Chennai')
    exercise.chooseTo('Mumbai')
    exercise.onwardDate()
    exercise.returnDate()
    exercise.search()
    sleep(2)

    compare = assert.compareText(exercise.gText_NB,'5 Buses found')
    assert_true(compare, "[Error] Message does not match the expected #{exercise.gText_NB}")
    sleep(1)

    compare = assert.compareText(exercise.gText_T01,'SRS Travels')
    assert_true(compare, "[Error] Message does not match the expected #{exercise.gText_T01}")
    sleep(1)

    compare = assert.compareText(exercise.gText_T02,'National Travels CHN')
    assert_true(compare, "[Error] Message does not match the expected #{exercise.gText_T02}")
    sleep(1)

    compare = assert.compareText(exercise.gText_D01,'05:30')
    assert_true(compare, "[Error] Message does not match the expected #{exercise.gText_D01}")
    sleep(1)

    compare = assert.compareText(exercise.gText_A01,'06:30')
    assert_true(compare, "[Error] Message does not match the expected #{exercise.gText_A01}")
    sleep(1)

    compare = assert.compareText(exercise.gText_D02,'10:30')
    assert_true(compare, "[Error] Message does not match the expected #{exercise.gText_D02}")
    sleep(1)

    compare = assert.compareText(exercise.gText_A02,'11:30')
    assert_true(compare, "[Error] Message does not match the expected #{exercise.gText_A02}")
    sleep(1)

  end


end
