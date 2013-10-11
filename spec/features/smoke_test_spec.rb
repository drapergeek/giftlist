require 'spec_helper'

feature 'smoke test' do
  scenario 'it works' do
    visit root_path
    expect(page).to have_content("Hello there!")
  end
end
