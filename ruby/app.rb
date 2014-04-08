load 'person.rb'

puts "What is your character's full name?"
name = gets.chomp
puts "What is your character's age?"
age = gets.chomp
dude = Person.new("name" => name ,"age" => age)


dude.say "Hi there, my name is #{dude.first_name}!\n"

dude.say "I'm only #{dude.age} years old.\n"

dude.say "That's right, I was born in #{dude.birthyear} \n"

color = %w(red orange yellow green blue purple black white).pop

dude.say "My favorite color is ... #{color}\n" 

dude.say "oh, and my favorite number is #{rand(1..100)} \n" 

dude.say "Hold on. Gonna go run and get something \n"

dude.run

dude.say "Alright, I am #{dude.energy} \n"

while dude.energy > 5
  dude.say "Need me to grab you anything? (y/n)"
  answer = gets.chomp   
  if answer == 'y'
    dude.run
    dude.say "Here you go.   \n"
    dude.say "#{dude.energy}"
    dude.say "Alright, now I'm #{dude.energy_level}\n"
  elsif answer == 'n'
    dude.say "thank god!"
    exit
  else 
    puts "what?"
  end
end
