
Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I follow "(.*?)"$/) do |new_game|
  click_link(new_game)
end

Then(/^I should see "(.*?)"$/) do |name|
  expect(page).to have_content(name)
end

And(/^I should be able to enter my name$/) do
  fill_in('name', :with => 'John')
end