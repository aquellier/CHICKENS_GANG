class ReviewPolicy < ApplicationPolicy

def index
    true
  end

  def show?
    true
    # user == record.owner
  end

  #def new
    #true
  #end

  def create?
    true
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
