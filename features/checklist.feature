Feature: Check items of vehicles
As a driver, I want to check the main 
componments of the vehicle after loging in.
  
Scenario: User does not check all the items on the list
  When I am on the checklist page
  Then I follow "Continue"
  And I should see "This is a Checklist for the Car"
  And I should not see "Dashboard"

Scenario: User check items on the checklist page
  When I am on the checklist page
  Then I should have Tire Pressure
  Then I check everything on the list
  And I click Continue
  And I should not see "Tire Pressure"

