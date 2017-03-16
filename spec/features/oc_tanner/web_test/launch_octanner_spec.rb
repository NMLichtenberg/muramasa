require 'spec_helper'
app = AutomationFramework::Application.new
test_name = 'Launch OC Tanner Website'

feature test_name.to_s, sauce: app.sauce do
  scenario test_name.to_s, type: 'acceptance', broken: false,
                           dev: true, qa: true, prod: true do

    app.launch_app(app.url('OCT'))
    app.oct_landing_page.open_menu
    app.oct_landing_page.click_why_appreciate
    expect(verify_page_heading).to eq 'elevate everything'
    app.oct_landing_page.click_products
    expect(verify_page_heading).to eq 'specificity matters'
    app.oct_landing_page.click_why_choose_us
    expect(verify_page_heading).to eq 'partner with excellence'
    app.oct_landing_page.click_insights
    expect(verify_page_heading).to eq 'gain understanding'
    app.oct_landing_page.click_institute
    expect(verify_page_heading).to eq 'Institute'
    app.oct_landing_page.click_clients
    expect(verify_page_heading).to eq 'cultures of great work'
    app.close_all_windows
  end
end
