FactoryGirl.define do
  sequence(:slug_uid) { |n| "#{n}"}

  factory :page do
    name { Faker::Lorem.words(3).join(' ') }
    slug { "#{name.parameterize}-#{generate(:slug_uid)}" }
    content { Faker::HTMLIpsum::body }
  end
end
