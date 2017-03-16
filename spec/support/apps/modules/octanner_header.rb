module Header

  def open_menu
    page.find[:css, "a[id='mobile-nav-link']"].click
  end

  def click_why_appreciate
    click_link('WHY APPRECIATE')
  end

  def click_products
    click_link('PRODUCTS')
  end

  def click_why_choose_us
    click_link('WHY CHOOSE US')
  end

  def click_insights
    click_link('INSIGHTS')
  end

  def click_institue
    click_link('INSTITUTE')
  end

  def click_clients
    click_link('Clients')
  end

  def verify_page_heading
    find('h1').text
  end



end