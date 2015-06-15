class Owner
  # code goes here
  @@all = []
  def initialize(species)
    @species = species
    @@pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end
  def species
    @species
  end
  def say_species
    "I am a #{@species}."
  end
  def name=(name)
    @name = name
  end
  def name
    @name
  end
  def pets
    @@pets
  end
  def sell_pets
    @@pets[:fishes].each {|fish| fish.mood = "nervous"}
    @@pets[:dogs].each {|dog| dog.mood = "nervous"}
    @@pets[:cats].each {|cat| cat.mood = "nervous"}
    @@pets = {}
  end
  def pets=(new_pets)
    @@pets = new_pets
  end
  def buy_fish(name)
    @fish = Fish.new(name)
    @@pets[:fishes] << @fish
  end
  def buy_cat(name)
    @cat = Cat.new(name)
    @@pets[:cats] << @cat
  end
  def buy_dog(name)
    @dog = Dog.new(name)
    @@pets[:dogs] << @dog
  end
  def walk_dogs
    @@pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  def play_with_cats
    @@pets[:cats].each do |kitty|
      kitty.mood = "happy"
    end
  end
  def feed_fish
    @@pets[:fishes].each do |fishy|
      fishy.mood = "happy"
    end 
  end

  def list_pets
    "I have #{@@pets[:fishes].count} fish, #{@@pets[:dogs].count} dog(s), and #{@@pets[:cats].count} cat(s)."
  end
  def self.all
    @@all
  end
  def self.reset_all
    @@all = []
  end
  def self.count
    @@all.count
  end
end