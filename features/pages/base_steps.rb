When(/^Menu has name "([^"]*)"$/) do |name|
  assert_selector("//div/a[text()='#{name}']")
end

Then(/^Expect element "([^"]*)"$/) do |selector|
  @base_page.wait_until_element_visible(selector)
end

When(/^Choose menu "([^"]*)"$/) do |menu_name|
  find("//div/a[text()='#{menu_name}']").click
end