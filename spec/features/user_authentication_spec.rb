require 'spec_helper'

feature 'user authentication' do
  scenario 'user logs in' do
    user = create(:user, first_name: 'Peter', last_name: 'Parker')
    visit root_path

    click_on 'Sign in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'

    expect(page).to have_content("Signed in as: Peter Parker")
  end
end
