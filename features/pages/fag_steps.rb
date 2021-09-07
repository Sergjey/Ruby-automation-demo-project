Then(/^Text is "([^"]*)" link or not$/) do |selector|
  link = find_link("#{selector}").visible?
  expect(link).to eq(true)
end