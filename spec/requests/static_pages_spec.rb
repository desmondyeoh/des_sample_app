require 'spec_helper'


describe "StaticPages" do
  
  let (:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do
    before { visit root_path }

<<<<<<< HEAD
    it "should have content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end
=======
    it { should have_content('Sample App') }
    it { should have_title("Ruby on Rails Tutorial Sample App | Home") }
    it { should_not have_title('| Home') }
>>>>>>> filling-in-layout

  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have title 'Help'" do
<<<<<<< HEAD
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
=======
      visit help_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
>>>>>>> filling-in-layout
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "should have title 'About'" do
<<<<<<< HEAD
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit "/static_pages/contact"
      expect(page).to have_content("Contact")
    end

    it "should have the title 'Contact'" do
      visit "/static_pages/contact"
      expect(page).to have_title("#{base_title} | Contact")
=======
      visit about_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
>>>>>>> filling-in-layout
    end
  end

end
