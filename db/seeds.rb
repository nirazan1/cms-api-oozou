10.times do |i|
    title            = Faker::Book.title
    published_date   = Faker::Time.forward(23, :morning)
    author           = Faker::Name.name
    summary          = Faker::Hipster.sentence
    content          = Faker::Hipster.paragraph
    Content.create!(
      title:           title,
      published_date:  published_date,
      author:          author,
      summary:         summary ,
      content:         content
    )
end
