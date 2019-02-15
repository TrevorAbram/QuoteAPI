# Seeding the db with fake data using the Faker Gem.

# First create a class called Seed.

require 'faker'

class Seed
  def self.begin
    seed = Seed.New
    seed.generate_quotes
  end

# Then create an to pull the fake quotes and display them.

  def generate_quotes
    20.times do |i|
      author =
      quote = Quote.create! (
        author (Faker::TvShows::RickAndMorty.character)
        content (Faker::TvShows::RickAndMorty.quote)
      )

      puts ("Quote #{i}: The author is #{quote.author} and the quote is '#{quote.content}'.")
    end
  end
end

Seed.begin
