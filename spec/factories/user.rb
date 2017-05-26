FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email()}
    password {Faker::Internet.password()}

    before(:create) do |user|
      pass = Faker::Lorem.words(8)
      user.password = pass
      user.password_confirmation = pass
    end
  end
end
