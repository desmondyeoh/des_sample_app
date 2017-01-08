require 'spec_helper'


describe "StaticPages" do

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title("Ruby on Rails Tutorial Sample App | Home") }
    it { should_not have_title('| Home') }

  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have title 'Help'" do
      visit help_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "should have title 'About'" do
      visit about_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
    end
  end

end
