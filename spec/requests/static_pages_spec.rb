require 'spec_helper'

describe "Static pages" do
  subject { page }
  describe "Home page" do
    before { visit root_path }
    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should have_title(' Home') }
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/help'
      expect(page).to have_content('Help')
    end
  end
  describe "About page" do
    it "should have the content 'About Us'" do 
      visit '/about'
      expect(page).to have_content('About Us')
    end  
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/contact'
      expect(page).to have_content('Contact')
    end
    it "should have the title 'Contact'" do
      visit '/contact'
      expect(page).to have_title("Contact")
    end  
  end

end
