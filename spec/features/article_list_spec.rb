require 'spec_helper'

feature 'article list' do
  scenario 'user creates an article' do
    visit root_path
    click_on 'Articles'
    fill_in 'Name', with: 'My Post'
    fill_in 'Body', with: 'My awesome body'
    click_on 'Create Article'

    expect(page).to have_css('.post-name', text: 'My Post')
    expect(page).to have_css('.post-body', text: 'My awesome body')
  end
end
