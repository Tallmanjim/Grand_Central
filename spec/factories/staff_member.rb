FactoryGirl.define do
  factory :staff_member do
  	association(:company)
    name {Faker::Name.name_with_middle}
  end
end
