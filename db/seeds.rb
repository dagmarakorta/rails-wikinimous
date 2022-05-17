require 'faker'

10.times do
  Article.create(title: Faker::Fantasy::Tolkien.poem, content: Faker::ChuckNorris.fact)
end
