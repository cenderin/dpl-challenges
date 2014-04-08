load 'helper.rb'

class Person
  include Helper
  attr_accessor :attributes, :energy

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

  def age
    @attributes["age"].to_i
  end

  def birthyear
    year = Time.now.year.to_i
    results = (year - age)
    results
  end

  def say(words)
    puts words
  end

  def run
    @energy -=  5
  end

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
