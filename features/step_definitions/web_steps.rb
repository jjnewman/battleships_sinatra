
Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I follow "(.*?)"$/) do |new_game|
  click_link(new_game)
end

And(/^I should see "(.*?)"$/) do |name|
  expect(page).to have_content(name)
end

And(/^I should be able to enter my name$/) do
  fill_in('name', :with => 'John')
end

Then(/^I should see the grid$/) do
  visit('/start_game')
end



Given(/^I am on the "(.*?)" page$/) do |name_page|
  visit('/name')
end

When(/^I don't enter my name$/) do
  fill_in('name', :with => '')
end

Then(/^I see "(.*?)"$/) do |error_name|
  expect(page).to have_content(error_name)
end