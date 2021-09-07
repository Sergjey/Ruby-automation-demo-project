class MainPage < BasePage
  set_url "#{$env_url}"

  element :caption, "//span[text()='Ruby Automation project']", match: :first
  element :github_button, "//div[@title='Github']"
end