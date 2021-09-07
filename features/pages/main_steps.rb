Given(/^Open home page$/) do
  begin
    @main_page.load
  rescue
    # if it doesn't load, try again
    @main_page.load
  end

  @main_page.wait_until_caption_visible
  assert_title("Ruby Automation project")
end

Then(/^Expect element on main page "([^"]*)"$/) do |selector|
  @main_page.wait_until_element_visible(selector)
end

When(/^Click on the element at main page "([^"]*)"$/) do |element|
  eval "@main_page.#{element}.click"
end