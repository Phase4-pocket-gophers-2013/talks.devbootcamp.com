Given(/^I am on the signup page$/) do
  visit root_path
end

When(/^I signup as "(.*?)"$/) do |arg1|
  fill_in 'user_username', :with => arg1
  fill_in 'user_password', :with => 'test'
  fill_in 'user_password_confirmation', :with => 'test'
  check(find("input[type='checkbox']")[:user_teacher])
  click_button("Signup")
end

Then(/^I should be signed in as "(.*?)"$/) do |arg1|
  page.should have_content(arg1)
end
