class Owner
  attr_accessor :pets
  
  def initialize
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def buy_cat(name)
    @pets.cats << Cat.new(name)
end