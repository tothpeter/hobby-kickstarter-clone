Feature: User auth
  @sign_up_and_sign_in_with_email_happy_path
  Scenario: Sign up then sign in with email happy path
    When the user clicks on the sign up link
    Then he lands on the sign up page
    When the user submits the filled form
    Then we create a new user record
    And he can can see the confirmation instruction
