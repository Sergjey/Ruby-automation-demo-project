class BasePage < SitePrism::Page
  # base methods
  def wait_until_element_visible(element)
    eval "wait_until_#{element}_visible"
  end

  # bottom base page
  element :bottom_email, "//p[@style='text-align: center;' and text()='serg.krapivin.qa@gmail.com  |   ']"
  element :bottom_github_url, "//span[@style='text-decoration: underline;']/a[@href='https://www.google.com/url?q=https%3A%2F%2Fgithub.com%2FSergjey%2FRuby-automation-demo-project&sa=D&sntz=1&usg=AFQjCNEp0nT0_-pALmoc1n66SWUQq7teLw' and text()='Github']"
end