require 'spec_helper'

feature 'smoke test', js: true do
  scenario 'it works' do
    visit root_path
    expect(page).to have_content('Welcome to the Gift Registry!')
  end
end
