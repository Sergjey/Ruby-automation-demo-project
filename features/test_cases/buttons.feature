# encoding: utf-8
# language: en

@full_test @buttons
Feature: 3.0 Checking buttons

  @main_top_button
  Scenario: Checking buttons at the pages
    Given Open home page
    Then  Expect element "github_button"
    *     Click on the element at main page "github_button"
    *     Switch to new tab
    Then  Page has text "Ruby-automation-demo-project"

  @no_github_button
  Scenario Outline: Checking absence github button at the history and faq pages
    Given Open home page
    *     Choose menu "<menu_name>"
    Then  Expect no element "github_button"
    Examples:
      | menu_name |
      | History   |
      | FAQ       |