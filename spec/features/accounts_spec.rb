require 'rails_helper'

describe 'login page' do
  it 'login page renders with login form' do
    visit login_path
    expect(page).to have_content("Login or Sign Up")
  end
end
