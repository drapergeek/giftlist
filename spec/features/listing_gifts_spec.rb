require 'spec_helper'

feature 'listing gifts', js: true do
  scenario 'basic list' do
    gifts = []
    gifts << create(:gift, name: 'Kindle', price: 100.01)
    gifts << create(:gift, name: 'Xbox One', price: 499.99)

    visit "/"

    gifts.each do |gift|
      expect(page).to have_gift(gift)
    end
  end

  RSpec::Matchers.define :have_gift do |gift|
    match do |page|
      page.has_selector?("[data-role='name']", text: gift.name) &&
        page.has_selector?("[data-role='price']", text: gift.price)
    end
  end
end
