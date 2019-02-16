# Seeding the db with fake data using the Faker Gem.

# First create a class called Seed.

# require 'faker'
#
# class Seed
#
#   def self.begin
#     seed = Seed.new
#     seed.generate_quotes
#   end
#
#   def generate_quotes
#     20.times do |i|
#       author =
#       quote = Quote.create!(
#         author: Faker::Book.author,
#         content: Faker::ChuckNorris.fact
#       )
#       puts "Quote #{i}: Author is #{quote.author} and quotation is '#{quote.content}'."
#     end
#   end
# end
#
# Seed.begin



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

20.times do |i|
    Quote.create! ({author: Faker::Book.author, content: Faker::ChuckNorris.fact})
    p "Quote #{i}: Author is #{quote.author} and quotation is '#{quote.content}'."
end
