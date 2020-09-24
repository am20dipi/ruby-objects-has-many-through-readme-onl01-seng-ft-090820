class Customer
  attr_accessor :name, :age, :meal, :waiter
  
  
  
  def initialize(name, age)
    @name = name
    @age = age
    @waiter = waiter
    @meal = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip = 0)
    newmeal = Meal.new(waiter, self, total, tip)
    newmeal
  end
  
  def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end
  
  def waiters
    meals.map do |meal|
      meal.waiter
    end
  end
  
end