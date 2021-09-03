When(/^Menu has name "([^"]*)"$/) do |name|
  assert_selector("//div/a[text()='#{name}']")
end