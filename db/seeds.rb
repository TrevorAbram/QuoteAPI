# Seeding the db with fake data using the Faker Gem.

# First create a class called Seed.

# require 'faker'




# def generate_quotes
#   20.times do |i|
#     author =
#     quotes = Quote.create! (
#       [{author: Faker::TvShows::RickAndMorty.author}, {content: Faker::TvShows::RickAndMorty.content}]
#     )
#
#     puts ("Quote #{i}: The author is #{Quote.author} and the quote is '#{Quote.content}'.")
#   end
# end

20.times do
    Quote.create!({
      author: Faker::Book.author,
      content: Faker::ChuckNorris.fact
      })
end
