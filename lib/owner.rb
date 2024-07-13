class Owner
  attr_reader :name, :species
  @@all = []

  def initialize(name, species="human")
    @name = name
    @species = species
    @@all << self
  # code goes here
end

def say_species
  "I am a #{self.species}."
end

def self.all
  @@all
end

def self.count
  @@all.count

end

def self.reset_all
@@all.clear
end

def cats
Cat.all.select {|cat| cat.owner == self}
end

def dogs
  Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
    cat
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
    dog
  end

  def walk_dogs
    self.dogs.collect {|dog| dog.mood = "happy"}
  end

  def feed_cats
    self.cats.collect {|cat| cat.mood = "happy"}
  end

  def sell_pets
    self.dogs.collect { |dog| dog.mood = "nervous" }
    self.cats.collect { |cat| cat.mood = "nervous" }
    self.dogs.collect { |dog| dog.owner = nil }
    self.cats.collect { |cat| cat.owner = nil }
  end

  def list_pets
   return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end


end