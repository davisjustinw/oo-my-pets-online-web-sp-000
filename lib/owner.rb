class Owner
  attr_accessor :name
  
  def initialize
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def self.count_all
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
end