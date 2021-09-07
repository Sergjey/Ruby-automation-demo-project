When(/^Menu has name "([^"]*)"$/) do |name|
  assert_selector("//div/a[text()='#{name}']")
end

Then(/^Expect element "([^"]*)"$/) do |selector|
  @base_page.wait_until_element_visible(selector)
end

When(/^Choose menu "([^"]*)"$/) do |menu_name|
  find("//div/a[text()='#{menu_name}']").click
end

When(/^Click on the text "([^"]*)"$/) do |text|
  find("//span/a[text()='#{text}']").click
end

Then(/^Page has text "([^"]*)"$/) do |text|
  assert_text("#{text}")
end

When(/^Scroll to bottom$/) { page.execute_script "window.scrollBy(0,10000)" }

When(/^Switch to new tab$/) { @base_page.switch_to_new_tab }