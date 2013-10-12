require 'spec_helper'

feature 'basic gift management', js: true do
  scenario 'list gifts' do
    gifts = []
    gifts << create(:gift, name: 'Kindle', price: 100.01)
    gifts << create(:gift, name: 'Xbox One', price: 499.99)

    visit "/"

    gifts.each do |gift|
      expect(page).to have_gift(gift)
    end
  end

  scenario 'show individual gift' do
    gift = create(:gift, url: 'http://www.example.com')

    visit '/'
    expect(page).to have_gift(gift)

    click_on gift.name
    expect(page).to have_content(gift.url)
  end

  RSpec::Matchers.define :have_gift do |gift|
    match do |page|
      page.has_selector?("[data-role='name']", text: gift.name) &&
        page.has_selector?("[data-role='price']", text: gift.price)
    end
  end
end
