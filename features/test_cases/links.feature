# encoding: utf-8
# language: en

@full_test @links
Feature: 2.0 Checking links

  @bottom_links
  Scenario Outline: Checking links at the bottom
  Given Open home page
  *     Choose menu "<menu_name>"
  *     Scroll to bottom
  *     Click on the text "<text>"
  *     Switch to new tab
  Then  Page has text "<text1>"
  Examples:
    | menu_name | text     | text1                        |
    | Main      | Github   | Ruby-automation-demo-project |
    | Main      | Linkedin | QA Automation Engineer       |
    | History   | Github   | Ruby-automation-demo-project |
    | History   | Linkedin | QA Automation Engineer       |
    | FAQ       | Github   | Ruby-automation-demo-project |
    | FAQ       | Linkedin | QA Automation Engineer       |

  @faq_links
  Scenario: Checking that text in faq page is link
    Given Open home page
    *     Choose menu "FAQ"
    Then  Text is "What is automation testing and why we should use it?" link or not
    Then  Text is "What is Capybara?" link or not
    Then  Text is "What is Site Prism?" link or not
    Then  Text is "What is Cucumber?" link or not
    Then  Text is "What is RSpec?" link or not

