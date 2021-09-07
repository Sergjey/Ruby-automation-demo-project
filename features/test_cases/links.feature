# encoding: utf-8
# language: en

@full_test @links
Feature: 2.0 Checking links

  @bottom_links
  Scenario Outline: Checking links at the bottom
  Given Open home page
  *     Scroll to bottom
  *     Click on the text "<text>"
  *     Switch to new tab
  Then  Page has text "<text1>"
  Examples:
    | text     | text1                        |
    | Github   | Ruby-automation-demo-project |
    | Linkedin | QA Automation Engineer       |