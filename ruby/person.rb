load 'helper.rb'
  # loaded the helper before it was included in the class
class Person
  include Helper
  attr_accessor :attributes, :energy
  # name and age are being put inside the attributes hash, you can then call it later 
  def initialize(attributes={})
    @attributes = attributes
    @energy = 20
  end

  # This returns a string of the person's name
  def name
    @attributes["name"]
  end
  # This is spliting the name into two parts and selecting the first part
  def first_name
    name.split(' ').first
  end

  # This is spliting the name into two parts and selecting the second part
  def last_name
    name.split(' ').last
  end
  # returning the age and converting it to an integer so it can be used in the birthyear statement
  def age
    @attributes["age"].to_i
  end
  # defining year as the current year and converting it to an integer, then taking that integer and minusing the age from it.  May not be the correct year everytime...
  def birthyear
    year = Time.now.year.to_i
    results = (year - age)
    results
  end
  # displays whatever the string is from the method
  def say(words)
    puts words + "\n"
  end
  # whatever @energy is currently at, it will minus 5 from it
  def run
    @energy -=  5
  end
  # couple errors with the code in here it works, maybe we were suppose to change energy level to 100 and these single digit integers to Two digit integers.. that would make more sense
  def energy_level
    case @energy
    when 100..1
      "OMG ABOUT TO DIE!"
    when 0..4
      "tired"
    when 4..6
      "doing ok"
    when 6..10
      "ready to go"
    end
  end

  def energy_level=(amount)
    @energy += amount
  end

end
