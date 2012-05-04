# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  fName      :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'spec_helper'

describe User do

  before { @user = User.new(fName: "Example User", email: "user@example.com") }

  subject { @user }

  it { should respond_to(:fName) }
  it { should respond_to(:email) }

  it { should be_valid }

  describe "when fName is not present" do
  	before { @user.fName = " " }
  	it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end


end