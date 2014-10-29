movies = {}


add = Proc.new {puts "Type in the title of the new movie you would like to add." 
    new_movie = gets.chomp.to_s

puts "What is the release date of the new movie? (dd/mm/yyyy)"
release = gets.chomp.to_s
puts "What is your rating (your expected if you haven't seen it yet) of the new movie? (out of 10)"
rating = gets.chomp.to_s+ "/10"
puts "Have you seen this movie yet? (Yes/No)"
seen = gets.chomp.to_s

movies[new_movie] = [release, rating, seen]

puts movies}

puts "This is a program to keep track of upcoming movies that you want to see."

loop do
puts "What would you like to do? To add a new movie type 'add', to exit type 'exit'"
input = gets.chomp.downcase
if input == "add"
add.call
elsif input == "exit"
break
end
end





# movies = { title: ["Release Date", "Rating - desire to see", "Seen it?"]}
