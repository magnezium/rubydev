def movies(film_file = 'movies.txt')
  massiv = []
  File.open(film_file).each do |line|
    massiv << line.downcase
  end

  string = 'max'

  massiv.each do |line|
    massiv = []
    (line.split(/[|]/)).each do |line|
       massiv << line.to_s
    end
    if massiv[1].include?(string)
      puts massiv[1] + '*' * ((massiv[7].to_f - 8)*10).round(0)
    end
  end
end

if ARGV.length < 1
  movies
elsif File.exist?(ARGV[0])
    movies ARGV[0]
else
  puts "Данного файла не существует"
end
