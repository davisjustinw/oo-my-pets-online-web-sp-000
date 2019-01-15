class Owner
  attr_accessor :pets, :name
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
  
  def self.all
    @@all
  end
  
  def say_species
    "I am a #{@species}."
  end
    
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
  
  def walk_dogs
    make_pets_happy(:dogs)
  end
  
  def play_with_cats
    make_pets_happy(:cats)
  end
    
  def feed_fish
    make_pets_happy(:fish)
  end
  
  private
  def make_pets_happy(pet_species)
    @pets[pet_species].each { |pet| pet.mood = "happy" }
  end
    
end