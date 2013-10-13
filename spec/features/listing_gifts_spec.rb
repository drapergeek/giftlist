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

  scenario 'add a gift' do
    gift = create(:gift, url: 'http://www.example.com')

    visit '/'
    expect(page).to have_gift(gift)

    new_gift = build(:gift, name: 'Macbook Air', price: '2199.99')

    click_on '+'
    fill_in 'giftName', with: new_gift.name
    fill_in 'giftPrice', with: new_gift.price
    click_on 'Add'

    expect(page).to have_gift(new_gift)
    verify_gift_form_is_clear

    visit '/'
    expect(page).to have_gift(new_gift)
  end

  def verify_gift_form_is_clear
    fields = ['#giftName', '#giftPrice']

    fields.each do |field|
      expect(find(field).value).to eq('')
    end
  end

  def press_enter_on_field_name(field_name)
    field_id = "##{field_name}"
    find(field_id).native.send_keys(:return)
  end

  RSpec::Matchers.define :have_gift do |gift|
    match do |page|
      page.has_selector?("[data-role='name']", text: gift.name) &&
        page.has_selector?("[data-role='price']", text: gift.price)
    end
  end
end
