load 'person.rb'

puts "What is your character's full name?"
name = gets.chomp
puts "What is your character's age?"
age = gets.chomp
dude = Person.new("name" => name ,"age" => age)

# added a new line for each say, not sure if its necessary 
dude.say "Hi there, my name is #{dude.first_name}!"

dude.say "I'm only #{dude.age} years old."

dude.say "That's right, I was born in #{dude.birthyear} "

color = %w(red orange yellow green blue purple black white).sample

dude.say "My favorite color is ... #{color}" 

dude.say "oh, and my favorite number is #{rand(1..100)} " 

dude.say "Hold on. Gonna go run and get something"

# this takes 5 away from energy
dude.run

dude.say "Alright, I am #{dude.energy} "

# this loop previously had two "need anything" statements, i removed one inside the if statement since its not needed.  added answer == intead of nothing, this was being called on nothing so it was throwing an error.

while dude.energy > 5
  dude.say "Need me to grab you anything? (y/n)"
  answer = gets.chomp   
  if answer == 'y'
    dude.run
    dude.say "Here you go."
    dude.say "#{dude.energy}"
    dude.say "Alright, now I'm #{dude.energy_level}"
  elsif answer == 'n'
    dude.say "thank god!"
    exit
  else 
    puts "what?"
  end
end
