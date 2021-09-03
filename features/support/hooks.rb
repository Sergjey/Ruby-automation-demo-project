# encoding: UTF-8

Before do |scenario|
  @base_page = BasePage.new
  @main_page = MainPage.new
  @history_page = HistoryPage.new
  @faq_page = FaqPage.new
  @time = Time.now
end

After do |scenario|
  # Create a Logger that prints to STDOUT
  if scenario.failed?
    puts scenario.name
    puts scenario.exception.message
    times = Time.now
    puts "Текущее время : " + times.inspect
  end
  Capybara.current_session.driver.browser.manage.delete_all_cookies
  Capybara.current_session.driver.quit
end