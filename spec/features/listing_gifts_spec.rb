require 'spec_helper'

feature 'listing gifts', js: true do
  scenario 'basic list' do
    gifts = []
    gifts << create(:gift, name: 'Kindle', price: 100.01)
    gifts << create(:gift, name: 'Xbox One', price: 499.99)

    visit "/#/gifts"
    expect(page).to have_content('Kindle')
    expect(page).to have_content('100.01')
    expect(page).to have_content('Xbox One')
    expect(page).to have_content('499.99')
  end
end
