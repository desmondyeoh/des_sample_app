require 'spec_helper'

describe "UserPages" do
  subject { page }

  describe "sign up page" do
    before { visit signup_path }

    it { should have_content('Sign Up') }
    it { should have_title('Ruby on Rails Tutorial | Sign up') }
  end

end
