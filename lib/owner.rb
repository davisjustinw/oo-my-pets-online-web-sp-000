require 'pry'
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
    change_pets_moods(:dogs, "happy")
  end
  
  def play_with_cats
    change_pets_moods(:cats, "happy")
  end
    
  def feed_fish
    change_pets_moods(:fishes, "happy")
  end
  
  def sell_pets
    @pets.keys.each do |species| 
      @pets[species].clear
      change_pets_moods(species, "nervous")
    end
  end
  
  def list_pets
    "I have #{@pets[:fish]} fish, #{@pets[:dogs]} dog(s), and #{@pets[:cats]} cat(s)."
  end
  
  private
  def change_pets_moods(pet_species, mood)
    @pets[pet_species].each { |pet| pet.mood =  mood }
  end
  
    
end