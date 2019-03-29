# Given("I am on Home Page") do
#   visit root_path
# end

# When("I click the 'Sign up now") do
#   # touch("view marked:'Sign up now!'")
#   pending
# end

When(/^I go to the homepage$/) do
  visit root_path
end

When(/^I am on the homepage$/) do
  visit root_path
end

# When(/^I am on the checklist page$/) do
#   visit checklist_path
# end

When(/^I should be on the checklist page$/) do
  visit checklist_path
end

Then(/^I should see the welcome message$/) do
  expect(page).to have_content("Welcome to TamUber")
end

When(/^I click the 'Sign in!'$/) do 
  visit login_path
end
  
Then(/^I should be on the Login page$/) do
  expect(page).to have_content("Log in")
end

Then(/^I should be on the Signup page$/) do
  visit signup_path
end

When(/^I am a new, authenticated user$/) do
  lastname = "zhang"
  firstname = "wenjie"
  email = 'testing@man.net'
  password = 'secretpass'
  password_confirmation = 'secretpass'
  User.new(:firstname => firstname, :lastname => lastname, :email => email, :password => password, :password_confirmation => password).save!
end

When(/^I enter the username and password$/) do 
end 

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^(?:|I )fill in "([^"]*)" for "([^"]*)"$/ do |value, field|
  fill_in(field, :with => value)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end


Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

Then /^(?:|I )should see \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)

  if page.respond_to? :should
    page.should have_xpath('//*', :text => regexp)
  else
    assert page.has_xpath?('//*', :text => regexp)
  end
end


Then /^(?:|I )should not see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_no_content(text)
  else
    assert page.has_no_content?(text)
  end
end

Then /^(?:|I )should not see \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)

  if page.respond_to? :should
    page.should have_no_xpath('//*', :text => regexp)
  else
    assert page.has_no_xpath?('//*', :text => regexp)
  end
end

