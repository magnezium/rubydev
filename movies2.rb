if ARGV.length < 1
  film_file = 'movies.txt'
else
  film_file = ARGV[0]
end
if
  File.exist?(film_file)
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
else
  puts "Данного файла не существует"
end
