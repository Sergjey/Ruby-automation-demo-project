class BasePage < SitePrism::Page
  # base methods
  def wait_until_element_visible(element)
    eval "wait_until_#{element}_visible"
  end

  # bottom base page
  element :bottom_email, "//p[@style='text-align: center;' and text()='serg.krapivin.qa@gmail.com  |   ']"
  element :bottom_github_url, "//span[@style='text-decoration: underline;']/a[@href='http://www.google.com/url?q=http%3A%2F%2Fwww.linkedin.com%2Fin%2Fsergei-krapivin-aqa&sa=D&sntz=1&usg=AFQjCNFi7HMTi8wyI9U8eS9mMq74ZNNPFQ' and text()='Linkedin']"
  element :bottom_linkedin, "//p[@style='text-align: center;' and text()='serg.krapivin.qa@gmail.com  |   ']"
end