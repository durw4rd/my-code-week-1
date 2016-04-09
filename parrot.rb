class Parrot
  attr_accessor :name
  attr_accessor :eye_color
  attr_accessor :size

  def initialize(name, eye_color, size)
    @name = name
    @eye_color = eye_color
    @size = size
  end

  def talk
    "Krrrraaak"
  end
end

parrot1 = Parrot.new("walkie-talkie", "brown", 2)

# puts "My parrot has a name: #{parrot1.name}."
# puts "He also has eyes with the #{parrot1.eye_color} color."
# puts "And he is #{parrot1.size} feat tall.\n\n"
# puts "So, if you're gonna tease him, he will eat you!"
p parrot1
puts parrot1.talk
