require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the h1 'Faux Cinema'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Project Faux Cinema')
    end
    
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', 
                        :text => "Project Faux Cinema | Home") 
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text =>'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "Project Faux Cinema | About Us")
    end
  end

  describe "Contact page" do
 
    it "should have the h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end

    it "should have the title 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                        :text => "Project Faux Cinema | Contact Us")
    end
  end
end
