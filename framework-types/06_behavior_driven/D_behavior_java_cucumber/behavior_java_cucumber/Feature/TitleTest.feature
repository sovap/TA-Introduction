Feature: Title test

Scenario: Validate title of robot framework web page
    Given browser with google is opened
    When user search for robot framework page
    And user navigate to robot framework page
    Then title of opened page is robot framework

Scenario: Validate title of selenium webdriver web page
    Given browser with google is opened
    When user search for selenium webdriver page
    And user navigate to selenium webdriver page
    Then title of opened page is selenium webdriver