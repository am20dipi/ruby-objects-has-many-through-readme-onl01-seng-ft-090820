class Waiter
  attr_accessor :name, :years, :tip, :meal
  
  def initialize(name, years)
    @name = name
    @years = years
    @meal = meal
    @tip = 0
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(customer, total, tip = 0)
    Meal.new(self, customer, total, tip)
  end
  
  def meals
    Meal.all.select do |meal|
      meal.waiter == self
    end
  end
  
  def best_tipper
    best_tipped_meal = meal.max do |meal_1, meal_2|
      meal_1.tip <=> meal_2.tip
    end
    best_tipped_meal.customer
  end
    

end