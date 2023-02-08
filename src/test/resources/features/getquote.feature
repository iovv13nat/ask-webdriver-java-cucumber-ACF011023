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
