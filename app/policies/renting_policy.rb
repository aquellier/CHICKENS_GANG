class RentingPolicy < ApplicationPolicy
  def create
    true
  end


  def new
   true
 end
 def my_bookings?
  true
  end
    
 def my_chicken_gangs?
  true
 end

  class Scope < Scope
  def resolve
    scope.all
  end
  end
end
