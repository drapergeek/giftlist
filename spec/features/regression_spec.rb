require 'spec_helper'

feature 'gift list', js: true do
  scenario 'moving off the new gift route without saving' do
    visit '/'
    expect(gift_row_count).to eq(0)

    click_on '+'
    expect(gift_row_count).to eq(1)

    navigate_to_root
    expect(gift_row_count).to eq(0)
  end


  scenario 'Adding a new gift and navigating away' do
    visit '/'
    expect(gift_row_count).to eq(0)

    click_on '+'
    expect(gift_row_count).to eq(1)

    add_gift
    expect(gift_row_count).to eq(2)

    navigate_to_root
    expect(gift_row_count).to eq(1)
  end

  def add_gift
    fill_in 'giftName', with: 'Hi There!'
    click_on 'Add'
  end

  def navigate_to_root
    click_on 'Giftlist'
  end

  def gift_row_count
    all("tbody > tr").count
  end
end
