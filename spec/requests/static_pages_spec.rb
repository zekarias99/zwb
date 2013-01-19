require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have h1 'Invest-Globe'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Invest-Globe')
    end

    it "should have title 'Invest-Globe | Home' " do
      visit '/static_pages/home'	
      page.should have_selector('title', :text => "Invest-Globe | Home")
    end
  end

  describe "Help page" do

    it "should have h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "shoul have title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => 'Invest-Globe | Help')
    end
  end

  describe "About Us page" do

    it "should have h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have title 'Invest-Globe | About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => 'Invest-Globe | About Us')
    end
  end

  describe "Contact Us page" do

    it "should have h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end

    it "should have title" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => 'Invest-Globe | Contact Us')
    end
  end
end
