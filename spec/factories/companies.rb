FactoryGirl.define do
  factory :company do
  	user_id { create(:user).id }
    sequence(:name) {|n| "#{n}#{Faker::Company.name}"}
  end
end