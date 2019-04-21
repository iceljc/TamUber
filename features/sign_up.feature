Feature: See the welcome page, sign up and sign in
As a product manager
I want our users to be greeted when they visit our site
So that they have a better experience

Scenario: User sees the welcome message
  When I am on the homepage
  Then I should see the welcome message

Scenario: Signup with Valid Credentials
  Given I am on the homepage
  When I follow "Sign in!"
  Then I should see "Sign up now"
  And I follow "Sign up now!"
  And I should be on the Signup page
  And I fill in "Firstname" with "aaa"
  And I fill in "Lastname" with "bbb"
  And I fill in "Email" with "test@test.com"
  And I fill in "Password" with "test123pass"
  And I fill in "Confirmation" with "test123pass"
  Then I press "Create my account"
  And I should be on the checklist page
  And I should see "This is a Checklist for the Car"

Scenario: Signup when password not matched
  Given I am on the homepage
  When I follow "Sign in!"
  Then I should see "Sign up now"
  And I follow "Sign up now!"
  And I should be on the Signup page
  When I fill in "Firstname" with "wenjie"
  And I fill in "Lastname" with "zhang"
  And I fill in "Email" with "test@test.com"
  And I fill in "Password" with "passtest123"
  And I fill in "Confirmation" with "test123pass"
  And I press "Create my account"
  Then I should see "Password confirmation doesn't match Password"

Scenario: Signup with existing email
  Given the account is set up
  When I am on the Signup page
  And I fill in "Firstname" with "ccc"
  And I fill in "Lastname" with "ddd"
  And I fill in "Email" with "aaa@bbb.com"
  And I fill in "Password" with "test123pass"
  And I fill in "Confirmation" with "test123pass"
  And I press "Create my account"
  Then I should see "Email has already been taken"

  
Scenario: Signin with Valid Credentials
  Given the account is set up
  When I am on the Signin page
  And I fill in "Email" with "aaa@bbb.com"
  And I fill in "Password" with "123456"
  And I press "Log in"
  Then I should be on the checklist page


Scenario: Signin with inValid Credentials
  Given the account is set up
  When I am on the Signin page
  And I fill in "Email" with "ccc@ddd.com"
  And I fill in "Password" with "test456pass"
  Then I press "Log in"
  And I should see "Invalid email/password"


Scenario: Forgot Password Email
  Given the account is set up
  When I am on the Signin page
  And I follow "Forgot Password"
  Then I should be on the Password Reset page
  When I fill in "Email" with "aaa@bbb.com"
  And I press "Submit"
  Then I go to the homepage


Scenario: Forgot Password Email with wrong email
  Given the account is set up
  When I am on the Signin page
  And I follow "Forgot Password"
  Then I should be on the Password Reset page
  When I fill in "Email" with "ccc@ddd.com"
  And I press "Submit"
  Then I should see "Email address not found"

Scenario: check the navigation bar
  Given I am on the homepage
  When I follow "Home"
  Then I should be on the Home page
  And I follow "Log in"
  Then I should be on the Login page
  And I follow "Help"
  Then I should be on the Help page