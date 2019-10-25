require 'rails_helper'

describe 'login page' do
  it 'login page renders with login form' do
    visit login_path
    expect(page).to have_content("Login or Sign Up")
  end
end

  describe "Log into App" do
    before do
      User.create(first_name: "Khaled", last_name: "Hassan", username: "khassan", password: "1111")
    end
    it 'successfully logs in and redirects the user to their show page' do
      visit '/login'
   
      fill_in(:username, :with => "khassan")
      fill_in(:password, :with => "1111")
      click_button "Login"
   
      expect(page).to have_content("Welcome, Khaled")
    end

    it 'Navigate to Create new session Page' do
      visit '/login'
      fill_in(:username, :with => "khassan")
      fill_in(:password, :with => "1111")
      click_button "Login"
      click_link("Create a new session")
      expect(page).to have_content("Create a new session")
    end

    it 'Navigates to All Users Page' do
      visit '/login'
      fill_in(:username, :with => "khassan")
      fill_in(:password, :with => "1111")
      click_button "Login"
      click_link("All Users")
      expect(page).to have_current_path(users_path)
    end
  
    it 'Navigates to Events Page' do
      visit '/login'
      fill_in(:username, :with => "khassan")
      fill_in(:password, :with => "1111")
      click_button "Login"
      click_link("Events")
      expect(page).to have_current_path(events_path)
    end

    it 'Logs in and Logs back out successfully' do
      visit '/login'
      fill_in(:username, :with => "khassan")
      fill_in(:password, :with => "1111")
      click_button "Login"
      click_link("Log out")
      expect(page).to have_current_path(login_path)
    end
    

    
  end