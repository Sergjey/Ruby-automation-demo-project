# Ruby-automation-demo-project

### The main tools on the project: 
* [cucumber][cucumber] - to describe the steps of test scenarios in human language
* [selenium-webdriver][selenium-webdriver], [site-prism][site-prism], [capybara][capybara], [RSpec][RSpec]- to testing UI
***
## Project structure
* **driver** - web-driver
* **features** - main directory for tests
    * **pages** - contains folders with descriptions of web-forms, for each form there are two files: 
    form_name_**page.rb** - contains a class with form elements and methods for working with these elements
    form_name_**steps.rb** - contains steps to perform actions on the form
    * **support** - contains two files (env.rb and hooks.rb) with settings for running autotests
    * **test_cases** - contains cucumber test cases in .feature files
* **reports** - storing reports
* **cucumber.yml** - profiles settings
* **Gemfile** и **Gemfile.lock** - contains the require libraries
[cucumber]: https://cucumber.io/docs/installation/ruby/
[site-prism]: https://github.com/site-prism/site_prism
[capybara]: https://github.com/teamcapybara/capybara
[selenium-webdriver]: https://www.selenium.dev/documentation/en/webdriver/
[RSpec]: https://github.com/rspec/rspec
***
## Commands for runs
* **Standard run** - bundle exec cucumber -t "@tag_name"
* **Standard run in headless mode** - bundle exec cucumber BROWSER=headless -t "@tag_name"
* **Standard run + html отчёт** - bundle exec cucumber -t "@tag_name" -p html_report
* **Standard run + rerun** - bundle exec cucumber -t "@tag_name" --retry 3
* **Parallel run** - bundle exec parallel_cucumber features/test_cases/ -n 3 -o "-t @tag_name"
***

