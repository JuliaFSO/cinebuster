require 'json'
require 'open-uri'

poster_image_url = 'https://image.tmdb.org/t/p/w500'
movies_url = "https://api.themoviedb.org/3/movie/top_rated?api_key=#{ENV['TMDB_KEY']}&language=en-US&page="

Movie.destroy_all
puts '=' * 20
puts 'Creating movies'
puts '=' * 20

10.times do |i|
  movies = JSON.parse(open("#{movies_url}#{i + 1}").read)['results']
  movies.each do |movie|
    next unless Movie.where(title: movie['title']).empty?

    movie = Movie.create!(
      title: movie['title'],
      overview: movie['overview'],
      poster_url: "#{poster_image_url}#{movie['poster_path']}",
    )
    puts "'#{movie.title}' created."
  end
end

puts "#{Movie.count} movies created!"

puts 'Seed done!'