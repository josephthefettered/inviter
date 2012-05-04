require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'Inviter" do
      	visit '/static_pages/home'
      page.should have_content('Inviter')
    end
  end
  describe "help page" do
	it "should have the content 'Help'" do
      	visit '/static_pages/help'
      	page.should have_content('Help')
    end
  end
  describe "about page" do
  	it "should have the content 'About'" do
  		visit '/static_pages/about'
  		page.should have_content('About')
  		end
	end
end
require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Inviter'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Inviter')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Inviter App | Home")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Inviter App | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "Inviter App | About")
    end
  end
end