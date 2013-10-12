require 'spec_helper'

feature 'smoke test' do
  scenario 'it works' do
    visit root_path
    expect(page).to have_content("Hello there!")
    expect(page).to have_content('Hi again!')
  end
end
