require_relative '../../../helpers/excel_utils'
require_relative '../pages/jet_page'

Given(/^I visit url "([^"]*)" and wait for load page$/) do |url|
  $url = url
  visit url.to_s
  sleep(5)
end

When(/^I validate the page title$/) do
  @title = JetPage.instance
  sleep 5
  @title.valid_elements_scroll
  sleep 5
end

And(/^I go to the Top Brands$/) do
  @home = JetPage.instance
  @home.valid_elements_scroll
  sleep 5
end

And(/^I get the page url$/) do
  @url = JetPage.instance
  #@url.scrolling_find_url
  @url.valid_url
  sleep 5
end

And(/^I will validate the footer elements$/) do
  @pagina = JetPage.instance
  @pagina.scrolling_find_element
  sleep 2
  @pagina.validate_pagina
  sleep 5
end

And(/^I validate without coinsiden the url$/) do
  @url = JetPage.instance
  @url.scrolling_find_url
  sleep 3
  @url.validate_url
  sleep 5
end