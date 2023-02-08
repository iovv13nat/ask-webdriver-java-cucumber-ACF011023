@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"


  @predefined2
  Scenario: Predefined steps for Gibiru.com
    Given I open url " http://gibiru.com"
    Then I should see page title contains "Gibiru"
    Then element with xpath "//input[@id='q']" should be present
    When I type "World Wide Web" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//button[@id='button-addon2']"
    Then I wait for element with xpath "//div[@class='gsc-control-cse gsc-control-cse-en']" to be present
    Then I should see page title as "Gibiru - Results"
    Then element with xpath "//div[@class='gsc-control-cse gsc-control-cse-en']" should contain text "World Wide Web"


  @predefined3
  Scenario: Predefined steps for duckduckgo.com
    Given I open url "https://duckduckgo.com"
    Then I should see page title contains "DuckDuckGo"
    Then element with xpath "//input[@id='search_form_input_homepage']" should be present
    When I type "Webdriver" into element with xpath "//input[@id='search_form_input_homepage']"
    Then I click on element using JavaScript with xpath "//input[@id='search_button_homepage']"
    Then I wait for element with xpath "//article[@id='r1-0']//div[3]//span[2]//b[1]" to be present
    Then I should see page title as "Webdriver at DuckDuckGo"
    Then element with xpath "//article[@id='r1-0']//div[3]//span[2]//b[1]" should contain text "WebDriver"


  @predefined3
  Scenario: Predefined steps for swisscows.com
    Given I open url "https://swisscows.com"
    Then I should see page title contains "Swisscows"
    And element with xpath "//input[@class='input-search']" should be present
    When I type "The Great Wall" into element with xpath "//input[@class='input-search']"
    And I click on element using JavaScript with xpath "//button[@class='search-submit']"
    And I wait for element with xpath "//div[@class='web-results']" to be present
    And I should see page title as "the great wall in Web search - Swisscows"
    And element with xpath "//section[1]//article[1]/p[1]/b[1]" should contain text "Great Wall"


  @predefined4
  Scenario: Predefined steps for searchencrypt.com
    Given I open url "https://www.searchencrypt.com"
    Then I should see page title as "Search Encrypt | Home"
    And element with xpath "//input[@name='q']" should be present
    When I type "Portnov school" into element with xpath "//input[@name='q']"
    And I click on element using JavaScript with xpath "//button[@class='search-bar__submit']"
    And I wait for element with xpath "//section[@class='serp__results container']" to be present
    And I should see page title contains "Search Encrypt | Search Web"
    And element with xpath "//div[@class='serp__top-ads']//strong[text()='Portnov school']" should contain text "Portnov school"


  @predefined5
  Scenario: Predefined steps for startpage.com
    Given I open url "https://www.startpage.com"
    Then I should see page title contains "Startpage - Private Search"
    Then element with xpath "//input[@id='q']" should be present
    When I type "IOS 16" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//div[1]/section[1]//form[1]/div[1]/button[1]"
    Then I wait for element with xpath "//div[@class='layout-web__mainline']" to be present
    Then I should see page title as "Startpage Search Results"
    Then element with xpath "//div[@class='layout-web__mainline']" should contain text "IOS 16"

#
#  @predefined6
#  Scenario: Predefined steps for yandex.com
#    Given I open url "https://www.yandex.com"
#    Then I should see page title as "Yandex"
#    Then element with xpath "//input[@id='text']" should be present
#    When I type "French Bulldog" into element with xpath "//input[@id='text']"
#    Then I click on element using JavaScript with xpath "//button[@type='submit']"
#    Then I wait for element with xpath "//body/main[1]/div[2]/div[2]/div[1]/div[1]" to be present
#    Then I should see page title contains "- Yandex:"



  @predefined7
  Scenario: Predefined steps for ecosia.org
    Given I open url "https://www.ecosia.org"
    Then I should see page title as "Ecosia - the search engine that plants trees"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Green Planet" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[1]/section[1]/div[2]/div[1]" to be present
    Then I should see page title contains "- Ecosia - Web"
    Then element with xpath "//div[1]/section[1]/div[2]/div[1]" should contain text "Green Planet"


  @predefined8
  Scenario: Predefined steps for wiki.com
    Given I open url "https://www.wiki.com/"
    Then I should see page title as "Wiki.com"
    And element with xpath "//input[@name='q']" should be present
    When I type "java coding" into element with xpath "//input[@name='q']"
    And I click on element using JavaScript with xpath "//input[@name='btnG']"
    And I wait for element with xpath "//div[@id='icon']" to be present
    And I click on element using JavaScript with xpath "//button[text()='Send anyway']"
    And I wait for element with xpath "//body/div[@id='inner-sbox']/div[1]" to be present
    And I should see page title contains "Wiki.com"
    And element with xpath "//body/div[@id='inner-sbox']/div[1]" should contain text "Java"


  @predefined9
  Scenario: Predefined steps for givewater.com
    Given I open url "https://www.givewater.com/"
    Then I should see page title contains "Search the Web"
    And I click on element using JavaScript with xpath "//button[@class='pum-close popmake-close']"
    And element with xpath "//input[@id='site-search']" should be present
    When I type "climate change" into element with xpath "//input[@id='site-search']"
    And I click on element using JavaScript with xpath "//button[@class='btn-search']"
    And I wait for element with xpath "//div[@class='mainline-results mainline-results__web']" to be present
    And I should see page title contains "- GiveWater"
    And element with xpath "//div[@class='ads-bing-top']//b[text()='Climate Change']" should contain text "Climate Change"


  @predefined10
  Scenario: Predefined steps for ekoru.org
    Given I open url "https://ekoru.org/"
    Then I should see page title as "Ekoru - every search cleans our oceans"
    And element with xpath "//input[@id='fld_q']" should be present
    When I type "reforestation" into element with xpath "//input[@id='fld_q']"
    And I click on element using JavaScript with xpath "//div[@id='btn_search']"
    And I wait for element with xpath "//div[@class='serp-wrapper']" to be present
    And I should see page title contains "Ekoru -"
    And element with xpath "//div[@class='serp-wrapper']" should contain text "Reforestation"


  