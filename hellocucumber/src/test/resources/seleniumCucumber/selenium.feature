# Breakout Task: 45 minutes
# Optimize your feature file (background, scenario outline, examples, tags) to search for multiple queries
# Optimize your step def file to use hooks
# Optimize your test runner to show the cucumber.html report
# EXTRA: upgrade your code to implement the Page Object Model
Feature: This is a Selenium Demo using Cucumber

  Background:
    Given my browser is open


  Scenario: Google Search
    When I navigate to google
    And I search for "<query>"
#    And I search for the following text:
#      | cow   | horse | sheep |
    And I search for selenium webdriver
    Then result stats would not be empty

  Scenario: Google Search
    When I navigate to google
    And I search for "Selenium WebDriver"
    Then result stats would not be empty

#  @Regression
#  Scenario: Google Search
#    When I navigate to google
#    And I search for the following text:
#      | selenium   | webdriver | automation |
#    Then result stats would not be empty

  Scenario Outline: Google Search
    When I navigate to google
    And I search for "<query>"
#    And I search for the following text:
#      | cow   | horse | sheep |
    Then result stats would not be empty

    Examples:
      | query                     |
      |    Saudi Digital Academy  |
      |    Test Automation        |
      |    Test Automation        |