require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "profile page" do
  		let(:user) { FactoryGirl.create(:user) }
  		before { visit user_path(user) }

    it { should have_selector('h1',    text: user.fName) }
    it { should have_selector('title', text: user.fName) }
  end



  describe "signup page" do
    before { visit signup_path }
    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Tester Sandwich"
        fill_in "Email",        with: "email@example.com"
        fill_in "Password",     with: "password"
        fill_in "Confirmation", with: "password"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end