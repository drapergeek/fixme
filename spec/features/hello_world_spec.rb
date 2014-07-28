require 'spec_helper'

feature 'hello world' do
  scenario 'guest visits the home page' do
    visit root_path
    expect(page).to have_css('p', text: 'Hello world!')
  end
end
