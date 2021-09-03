class MainPage < BasePage
  set_url "#{$env_url}"

  element :caption, "//span[text()='Ruby Automation project']", match: :first
end