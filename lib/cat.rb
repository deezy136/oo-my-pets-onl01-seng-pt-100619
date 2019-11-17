class Cat
  attr_reader :name
  attr_accessor :mood, :owner

@@all = []
  def initialize(name, owner=nil)
    @owner = owner
    @name = name
    @@all << self 
    @mood = "nervous"
  end
  
  def self.all 
    @@all 
  end 
end