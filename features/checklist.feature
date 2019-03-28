Feature: Check items of vehicles

Scenario: User check items on the checklist page
  When I am on the checklist page
  Then I check everything on the list
  And I follow "Continue"
  And I should see "Dashboard"

