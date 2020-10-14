# Describes an User
class User
  ### CLASS DEFINITIONS ###


  # Class variables
  @@all = [] # list of all Users

  # Reader for all class variable
  def self.all
    @@all
  end  


  ### INSTANCE DEFINITIONS ###

  # instance readers and writers
  attr_accessor :first_name, :last_name

  # default constructor
  def initialize(first_name=nil, last_name=nil)
    self.first_name = first_name
    self.last_name = last_name

    self.save
  end

  # saves User instance to all class variable
  def save
    self.class.all << self
  end
end