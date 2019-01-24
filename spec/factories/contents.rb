FactoryGirl.define do
  factory :content do
    title          { Faker::Book.title }
    published_date { Faker::Time.forward(23, :morning) }
    author         { Faker::Name.name }
    summary        { Faker::Hipster.sentence }
    content        { Faker::Hipster.paragraph }
  end
end
