require 'spec_helper'
app = AutomationFramework::Application.new
test_name = 'Launch Google'

feature test_name.to_s, sauce: app.sauce do
  scenario test_name.to_s, type: 'acceptance', broken: false,
                           dev: true, qa: true, prod: true do

    app.launch_app(app.url('GOOGLE'))
    app.close_all_windows
  end
end
