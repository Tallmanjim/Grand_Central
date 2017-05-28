FactoryGirl.define do
  factory :project do
  	association(:company)
    name {Faker::Name.name_with_middle}
    shortname {Faker::Name.name[0..3]}
  end
end