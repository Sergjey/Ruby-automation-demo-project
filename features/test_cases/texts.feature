# encoding: utf-8
# language: en

@full_test @texts
Feature: 1.0 Checking texts on pages

  @tab_menu
  Scenario: Checking text in tab menu

  Given Open home page
    *   Menu has name "Main"
    *   Menu has name "History"
    *   Menu has name "FAQ"
