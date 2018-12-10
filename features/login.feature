Feature: Login Page

  @email_invalid_test
  Scenario: Entering a variety of invalid emails
    Given I have a data table of invalid emails
    | Dave |
    | Tim@  |
    | bob@hastings  |
    | 我爱一个方向@china.com |
    | @ask.jeeves |
    | #@%^%#$@#$@#.com |
    | <email@domain.com> |
    | email.domain.com |
    | email@domain@domain.com |
    | .email@domain.com |
    | あいうえお@domain.com |
    | email@domain.com (Joe Smith) |
    | email@111.222.333.44444 |
    Then these emails should not be accepted

  @email_valid_test
  Scenario: Entering a variety of valid emails
    Given I have a data table of valid emails
    | hello@fred.co.uk | #valid
    | 123@bt.jp | #valid
    | bill.bo@happy.com | #valid
    | email@subdomain.domain.com | #valid
    | email@123.123.123.123 | #valid
    | "email"@domain.com | #valid
    | _______@domain.com | #valid
    Then these emails should be accepted
