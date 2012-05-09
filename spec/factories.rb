FactoryGirl.define do |variable|
	factory :user do
		fName	"Joseph"
		email	"joseph@example.com"
		password "foobar"
		password_confirmation "foobar"
	end
end