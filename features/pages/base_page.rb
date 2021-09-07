class BasePage < SitePrism::Page
  # base methods
  def wait_until_element_visible(element)
    eval "wait_until_#{element}_visible"
  end

  def wait_until_element_invisible(element)
    eval "wait_until_#{element}_invisible"
  end

  def switch_to_new_tab
    current_browser = page.driver.browser
    current_browser.switch_to.window(current_browser.window_handles.last)
  end

  # bottom base page
  element :bottom_email, "//p[@style='text-align: center;' and text()='serg.krapivin.qa@gmail.com  |   ']"
  element :bottom_github_url, "//span[@style='text-decoration: underline;']/a[@href='http://www.google.com/url?q=http%3A%2F%2Fwww.linkedin.com%2Fin%2Fsergei-krapivin-aqa&sa=D&sntz=1&usg=AFQjCNFi7HMTi8wyI9U8eS9mMq74ZNNPFQ' and text()='Linkedin']"
  element :bottom_linkedin, "//p[@style='text-align: center;' and text()='serg.krapivin.qa@gmail.com  |   ']"

  element :github_button, "//div[@title='Github']"
end