film_file = ARGV[0] || 'movies.txt'


unless File.exist?(film_file)
  puts "Данного файла не существует"
  exit
end
 
massiv = []
File.open(film_file).each do |line|
  massiv << line
end
string = 'Max'
massiv.each do |line|
  massiv = line.split('|')
  if massiv[1].include?(string)
    puts massiv[1] + '*' * ((massiv[7].to_f - 8)*10).round(0)
  end
end
