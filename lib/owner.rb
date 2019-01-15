class Owner
  attr_accessor :pets
  attr_reader :species
  
  @@all = []
  
  
  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def self.count
    @@all.count
  end
  
  def say_species
    
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
end