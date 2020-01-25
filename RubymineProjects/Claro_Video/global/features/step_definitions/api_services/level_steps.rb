require_relative '../../../../helpers/utils_api'
require_relative '../../../../helpers/api_services/request_contents'


Given(/^I execute the service "([^"]*)" in the API's$/) do |service|
  @service = service
  puts "Se ejecutara el servicio: #{@service}"
end
When(/^I send the "([^"]*)" to the service in the device "([^"]*)" and the service responds to me$/) do |request, device|
  @api = UtilsApi.find_service(@service, request, device)

end
When(/^I validate response of the service is different to empty$/) do
  UtilsApi.validate_empty(@api)
end

And(/^I check the response message is "([^"]*)"$/) do |message|
  UtilsApi.validate_message(@api, message)
end

And(/^I check the response code is "([^"]*)"$/) do |code|
  UtilsApi.validate_code(@api, code)
end

Then(/^I check the response contains the item "([^"]*)"$/) do |item|
  UtilsApi.find_element(@api, item)
end