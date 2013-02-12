require 'spec_helper'

feature 'Adding a new portfolio' do
  before do
    visit '/'
    click_link 'New Portfolio'
  end

  scenario 'Can create a new portfolio' do
    fill_in 'Name', :with => 'Value Portfolio'
    click_button 'Create Portfolio'
    page.should have_content 'Your portfolio has been created'
  end
  
end