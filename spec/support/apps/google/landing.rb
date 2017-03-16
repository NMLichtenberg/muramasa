class GoogleLandingPage < AutomationFramework::Utilities
  include Capybara::DSL

  def enter_search_text(search_text)
    page.fill_in 'lst-ib', with: search_text
  end

  def click_search
    page.click_on 'Google Search'
  end

  def click_search_result(result)
    page.click_on result
  end

  def print_period
    period = find(:xpath, "//a[contains(@href,'period')]").text
    puts period
  end

end