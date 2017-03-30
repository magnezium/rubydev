massiv = []
ARGV.each do |i|
  massiv << i.downcase
end
film = massiv.join(" ")
good_list = ['matrix x', 'rik']
bad_film = 'titanic'
puts film
if good_list.grep(film) == Array(film)
    puts film.capitalize + ' is a good movie'
  elsif bad_film == film
    puts film.capitalize + ' is a bad movie'
  else
    puts "Haven't seen #{film.capitalize} yet"
end
