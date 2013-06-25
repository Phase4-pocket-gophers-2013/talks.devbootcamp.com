Given(/^I am logged in as a teacher with email "(.*?)" and password "(.*?)"$/) do |email, password|
  FactoryGirl.create(:user, email: email, password: password) # express the regexp above with the code you wish you had
end

Given(/^I get to the create a talk page$/) do
  visit 'talk/new'
end

When(/^I create a talk with title "(.*?)" and an embed code "(.*?)"$/) do |title, code|
  fill_in 'Title', :with => 'kid president'
  fill_in ':embed_code', :with => embed_code
end

When(/^I click "(.*?)"$/) do |create|
  click_link 'create'
end

Then(/^I should see the correct title of the talk$/) do
   expect(page).to have_content 'kid president'
end

Then(/^I should see the embed code$/) do
  expect(page).to have_content "<iframe width='560 height='315' src='http://www.youtube.com/embed/l-gQLqv9f4o' frameborder='0' allowfullscreen></iframe>"
end

When(/^I visit a talk page I have created$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I click Edit$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I change the title to "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I click Save$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I click Delete$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I am logged in as a user with email "(.*?)" and password "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Given(/^I visit a talk page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the talk$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the title$/) do
  pending # express the regexp above with the code you wish you had
end
