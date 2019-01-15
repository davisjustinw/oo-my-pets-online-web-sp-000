class Owner
  
  @@all = []
  
  def self.count_all
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
end