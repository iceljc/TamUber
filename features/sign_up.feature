Feature: See the welcome page, sign up and sign in
As a product manager
I want our users to be greeted when they visit our site
So that they have a better experience

Scenario: User sees the welcome message
  When I go to the homepage
  Then I should see the welcome message

Scenario: Signup with Valid Credentials
  Given I am on the homepage
  When I follow "Sign in!"
  Then I should see "Sign up now"
  And I follow "Sign up now!"
  And I should be on the Signup page
  And I fill in "Firstname" with "wenjie"
  And I fill in "Lastname" with "zhang"
  And I fill in "Email" with "test@test.com"
  And I fill in "Password" with "test123pass"
  And I fill in "Confirmation" with "test123pass"
  Then I press "Create my account"
  And I should be on the checklist page
  And I should see "This is a Checklist for the Car"

  
Scenario: Signin with Valid Credentials
  Given I am on the homepage
  When I follow "Sign in!"
  Then I should be on the Login page
  And I fill in "Email" with "test@test.com"
  And I fill in "Password" with "test123pass"
  And I press "Log in"
  Then I should be on the checklist page


Scenario: Signin with inValid Credentials
  Given I am on the homepage
  When I follow "Sign in!"
  Then I should be on the Login page
  And I fill in "Email" with "test@test.com"
  And I fill in "Password" with "test456pass"
  Then I press "Log in"
  And I should see "Invalid email"



# When I fill in "Firstname" with "wenjie"
# And I fill in "Lastname" with "zhang"
# And I fill in "Password_confirmation" with "test123pass"


# Scenario: login with valid credentials
#   Given I am on the login page
#   When I fill in "Email" with "test@test.com"
#   And I fill in "Password" with "test123pass"
#   And I press "Login"
#   Then I should be on the users home page
#   And I should see "Login successful"
