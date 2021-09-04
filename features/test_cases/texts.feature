# encoding: utf-8
# language: en

@full_test @texts
Feature: 1.0 Checking texts on pages

  @tab_menu
  Scenario: Checking text in tab menu

    Given  Open home page
    Then   Menu has name "Main"
    Then   Menu has name "History"
    Then   Menu has name "FAQ"

  @bottom_text
  Scenario Outline: Checking text and link at the bottom of the page
    Given Open home page
    *     Choose menu "<menu_name>"
    Then  Expect element "bottom_email"
    Then  Expect element "bottom_github_url"
    Examples:
      | menu_name |
      | Main      |
      | History   |
      | FAQ       |

