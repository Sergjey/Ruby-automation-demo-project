# encoding: utf-8
# language: en

@full_test @buttons
Feature: 3.0 Checking buttons

  @main_top_button
  Scenario: Checking buttons at the pages
    Given Open home page
    Then  Expect element on main page "github_button"
    *     Click on the element at main page "github_button"
    *     Switch to new tab
    Then  Page has text "Ruby-automation-demo-project"