# encoding: utf-8
# language: en

@full_test @texts
Feature: 1.0 Checking texts on pages

  @tab_menu
  Scenario Outline: Checking text in tab menu

    Given  Open home page
    *      Choose menu "<menu_name>"
    Then   Menu has name "Main"
    Then   Menu has name "History"
    Then   Menu has name "FAQ"
    Examples:
      | menu_name |
      | Main      |
      | History   |
      | FAQ       |

  @bottom_text
  Scenario Outline: Checking text and link at the bottom of the page
    Given Open home page
    *     Choose menu "<menu_name>"
    *     Scroll to bottom
    Then  Expect element "bottom_email"
    Then  Expect element "bottom_github_url"
    Then  Expect element "bottom_linkedin"
    Examples:
      | menu_name |
      | Main      |
      | History   |
      | FAQ       |

