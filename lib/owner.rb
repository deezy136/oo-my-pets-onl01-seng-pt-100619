class Owner
 
 attr_reader :name, :species
 @@all = []
 def initialize(name)
    @name = name 
    @@all << self
    @species = "human"
    @pets = {:cats => [], :dogs => []}
 end 
 
 def cats
 Cat.all.select {|cats| cats.owner == self  }
 end 
 
 
 def dogs
 Dog.all.select {|dogs| dogs.owner == self  }
 end 
 
 def buy_cat(name)
     name = Cat.new(name, self)
    @pets[:cats] << name 
  end
  
   def buy_dog(name)
     name = Dog.new(name, self)
    @pets[:dogs] << name 
  end
  
def walk_dogs 
 Dog.all.each {|dogs| 
 dogs.mood = "happy"
}
end 
  
  def feed_cats 
  Cat.all.each {|cats| 
 cats.mood = "happy"
  }
 end
 
 def sell_pets
 cats = Cat.all.each{ |cat| 
 cat.mood = "nervous"
 cat.owner = nil
 }
dogs  = Dog.all.select{ |dog| 
dog.mood = "nervous"
dog.owner = nil
 }
 @pets[:dogs] = dogs
 @pets[:cats] = cats
  end 
 
 def species
   return "human"
    end 
 
 def say_species
    "I am a #{species}."
 end
 
 def list_pets
   "I have #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
 end 
 def self.all 
  @@all 
 end 
 
 def self.count
    @@all.size 
 end 
 
 def self.reset_all
   @@all.clear
 end 
 
 
end