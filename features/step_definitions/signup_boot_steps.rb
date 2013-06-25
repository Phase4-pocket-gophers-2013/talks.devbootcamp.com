Given(/^I go to the "(.*?)" page$/) do |path|
  visit path
end
Given(/^I fill in Username with "(.*?)" and Password with "(.*?)" and Password Confirmation with "(.*?)"$/) do |username, password, password_conf|
	field = page.find('#user_username')
	field.set(username)
	field = page.find('#user_password')
	field.set(password)
	field = page.find('#user_password_confirmation')
	field.set(password_conf)
end

Given(/^I click "(.*?)"$/) do |button|
	click_on button
end

Then(/^I should see "(.*?)" and "(.*?)"$/) do |arg1, arg2|
	page.should have_content(arg1)
	page.should have_content(arg2)
end
