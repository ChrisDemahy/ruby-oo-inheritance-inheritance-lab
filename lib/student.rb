# Describes an Student
class Student < User
  ### CLASS DEFINITIONS ###



  ### INSTANCE DEFINITIONS ###


  # instance readers and writers
  attr_accessor :knowledge

  # default constructor
  def initialize(first_name=nil, last_name=nil)
    super
    self.knowledge = []
  end

  # saves Student instance to all class variable
  def save
    self.class.all << self
  end

  # instance methods # 

  # adds knowledge to the curent students ledger of what they know 
  def learn(knowledge)
    self.knowledge << knowledge
  end
end