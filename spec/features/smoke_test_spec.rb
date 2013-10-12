require 'spec_helper'

feature 'smoke test', js: true do
  scenario 'it works' do
    visit root_path
    expect(page).to have_content("Hello there!")
    expect(page).to have_content('Hi there !')
  end

  scenario 'ember bindings' do
    visit root_path
    fill_in 'personName', with: 'Peter'
    expect(page).to have_selector('h2', text: 'Hi there Peter!')
  end
end
