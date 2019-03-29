
Given /^I am on the checklist page$/ do
  visit checklist_path
end

When /^I check everything on the list$/ do
#   expect(page).to have_title('Checklist | TamUber')
  #expect(page.find('div.col-md-6.col-md-offset-3 li.al')).to have_selector(:css, 'i.fas.fa-check')
  first(:css, 'i.fas.fa-check').click
  
end

Then /^I should have Tire Pressure$/ do |text|
  expect(page).to have_selector('i#tire pressure', visible:false)
end

# Then /^(?:|I )should not see Tire Pressure$/ do |text|
#   if page.respond_to? :should
#     page.should have_no_content(text)
#   else
#     assert page.has_no_content?(text)
#   end
# end