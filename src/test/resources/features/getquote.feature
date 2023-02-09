# Test Automation Exercise - Cucumber
# hhtps://jira.portnov.com/browse/ACF-897

@quote
Feature:Quote Test Scenarios

  Background:
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then I resize window to 1920 and 1080


  @quote1
  Scenario: Verify that responsiveness of Quote application
#      Given I open url "https://skryabin.com/market/quote.html"
#      Then I should see page title as "Get a Quote"
      #desktop mode
    Then I resize window to 1920 and 1080
    Then element with xpath "//b[@id='location']" should be displayed
    Then element with xpath "//b[@id='location']" should contain text "Los Altos, CA 94022"
      #iphone mode
    Then I resize window to 375 and 667
    Then element with xpath "//b[@id='location']" should not be displayed


  Scenario: Verify Username Field
#      Given I open url "https://skryabin.com/market/quote.html"
#      Then I should see page title as "Get a Quote"
#      Then I resize window to 1920 and 1080
    Then element with xpath "//input[@name='username']" should be present
    Then I type "A" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should contain text "Please enter at least"
    Then I clear element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should have text as "This field is required."
    Then I type "Ab" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should not be displayed


  @quote3
  Scenario: Verify Name field
    Then I click on element with xpath "//input[@id='name']"
    Then I wait for element with xpath "//input[@id='firstName']" to be present
    Then I type "First" into element with xpath "//input[@id='firstName']"
    Then element with xpath "//input[@id='middleName']" should be displayed
    Then I type "Middle" into element with xpath "//input[@id='middleName']"
    Then element with xpath "//input[@id='lastName']" should be displayed
    Then I type "Last" into element with xpath "//input[@id='lastName']"
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "First Middle Last"


  @quote4
  Scenario:Verify Email Field
    Then element with xpath "//input[@name='email']" should be present
    Then I type "asdf" into element with xpath "//input[@name='email']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should have text as "Please enter a valid email address."
    Then I clear element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='email-error']" should have text as "This field is required."
    Then I type "asdf@lb" into element with xpath "//input[@name='email']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should not be displayed


  @quote5
  Scenario: Verify Password and Confirm Password field
    Then element with xpath "//input[@id='confirmPassword']" should be present
    Then element with xpath "//input[@id='confirmPassword']" should be disabled
    Then element with xpath "//input[@id='password']" should be present
    Then I type "123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='password-error']" should have text as "Please enter at least 5 characters."
    Then I clear element with xpath "//input[@id='password']"
    Then element with xpath "//label[@id='password-error']" should have text as "This field is required."
    Then I type "123456" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//input[@id='confirmPassword']"
    Then element with xpath "//label[@id='password-error']" should not be displayed
    Then I type "123567" into element with xpath "//input[@id='confirmPassword']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='confirmPassword-error']" should have text as "Passwords do not match!"
    Then I clear element with xpath "//input[@id='confirmPassword']"
    Then element with xpath "//label[@id='confirmPassword-error']" should have text as "This field is required."
    Then I type "123456" into element with xpath "//input[@id='confirmPassword']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='confirmPassword-error']" should not be displayed


  @quote6
  Scenario: Verify Accepting Privacy Policy field
    Then element with xpath "//input[@name='agreedToPrivacyPolicy']" should be present
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should have text as "- Must check!"
    When I switch to default content
    Then I wait for 3 sec
    Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should not be displayed


  @quote7
  Scenario: Verify non-required fields
    Then element with xpath "//input[@name='phone']" should be present
    Then I type "1236789059078564321789" into element with xpath "//input[@name='phone']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='phone-error']" should contain text "Please enter no more"
    Then I clear element with xpath "//input[@name='phone']"
    Then I type "123456789" into element with xpath "//input[@name='phone']"
    Then I click on element with xpath "//button[@id='formSubmit']"

    Then element with xpath "//select[@name='countryOfOrigin']" should be present
    Then I click on element with xpath "//select[@name='countryOfOrigin']"
    Then element with xpath "//option[contains(text(),'Please Select...')]" should be displayed
    Then I click on element with xpath "//option[contains(text(),'Germany')]"
    Then element with xpath "//select[@name='countryOfOrigin']" should have attribute "value" as "Germany"

    Then element with xpath "//label[contains(text(),'Gender')]" should be displayed
    Then I click on element with xpath "//input[@value='female']"
    Then element with xpath "//input[@value='female']" should be enabled

    Then element with xpath "//input[@name='allowedToContact']" should be displayed
    Then I click on element with xpath "//input[@name='allowedToContact']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//input[@name='allowedToContact']" should be enabled

    Then element with xpath "//textarea[@id='address']" should be displayed
    Then I type "Washington" into element with xpath "//textarea[@id='address']"
    Then I click on element with xpath "//button[@id='formSubmit']"

    Then element with xpath "//select[@name='carMake']" should be displayed
    Then I click on element with xpath "//option[text()='Ford']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//select[@name='carMake']" should have attribute "value" as "Ford"

    Then element with xpath "//button[@id='thirdPartyButton']" should be displayed
    Then I click on element with xpath "//button[@id='thirdPartyButton']"
    Then I accept alert
    Then element with xpath "//span[@id='thirdPartyResponseMessage']" should have text as "You accepted third party agreement."

    Then element with xpath "//input[@id='dateOfBirth']" should be displayed
    Then I click on element with xpath "//input[@id='dateOfBirth']"
    Then element with xpath "//select[@class='ui-datepicker-year']" should be displayed
    Then I click on element with xpath "//select[@class='ui-datepicker-year']"
    Then element with xpath "//option[@value='1901']" should be present
    Then I click on element with xpath "//option[@value='1901']"
    Then element with xpath "//select[@class='ui-datepicker-month']" should be present
    Then I click on element with xpath "//select[@class='ui-datepicker-month']"
    Then element with xpath "//option[contains(text(),'Mar')]" should be present
    Then I click on element with xpath "//option[contains(text(),'Mar')]"
    Then element with xpath "//tbody/tr[2]/td[3]/a[1]" should be present
    Then I click on element with xpath "//tbody/tr[2]/td[3]/a[1]"


  @quote8
  Scenario Outline: Submit form and verify the data
    Then element with xpath "//input[@name='username']" should be present
    Then I type "<username>" into element with xpath "//input[@name='username']"
    Then element with xpath "//input[@name='email']" should be present
    Then I type "<email>" into element with xpath "//input[@name='email']"
    Then element with xpath "//input[@id='password']" should be present
    Then I type "<password>" into element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='confirmPassword']" should be present
    Then I type "<confirmPassword>" into element with xpath "//input[@id='confirmPassword']"
    Then element with xpath "//input[@id='name']" should be present
    Then I click on element with xpath "//input[@id='name']"
    Then I wait for element with xpath "//input[@id='firstName']" to be present
    Then I type "<FirstName>" into element with xpath "//input[@id='firstName']"
    Then element with xpath "//input[@id='middleName']" should be displayed
    Then I type "<MiddleName>" into element with xpath "//input[@id='middleName']"
    Then element with xpath "//input[@id='lastName']" should be displayed
    Then I type "<LastName>" into element with xpath "//input[@id='lastName']"
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@name='agreedToPrivacyPolicy']" should be present
    Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then element with xpath "//button[@id='formSubmit']" should be present
    Then I click on element with xpath "//button[@id='formSubmit']"
    When I wait for element with xpath "//legend[@class='applicationResult']" to be present
    Then element with xpath "//b[@name='username']" should have text as "<username>"
    Then element with xpath "//b[@name='email']" should have text as "<email>"
    Then element with xpath "//b[@name='password']" should have text as "[entered]"
    Then element with xpath "//b[@name='password']" should not contain text "<password>"
    Then element with xpath "//b[@name='name']" should have text as "<FullName>"
    Then element with xpath "//b[@name='agreedToPrivacyPolicy']" should contain text "true"
    Examples:
      | username  | email  | password | confirmPassword | FirstName | MiddleName | LastName | FullName |
      | iovv      | asdf@lb | 123456  | 123456          | Lincoln   | Jr         | Kee      | Lincoln Jr Kee |









