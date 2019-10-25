require 'rails_helper'


describe 'form page' do
  it 'form renders with the new action' do
    visit events_path
    expect(page).to have_content("All Events")
  end

end