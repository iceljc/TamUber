
Given /^I am on the checklist page$/ do
  visit checklist_path
end

When /^they check everything of the checklist$/ do
  expect(page).to have_title('Checklist | TamUber')
  #expect(page.find('div.col-md-6.col-md-offset-3 li.al')).to have_selector(:css, 'i.fas.fa-check')
  first(:css, 'i.fas.fa-check').click


end