class ChickensGangPolicy < ApplicationPolicy

    def index
      true
    end

    def show?
      true
    end

    # def new?
    #   true
    # end

    def create?
      true
    end

    # def edit?
    #   user_is_owner?
    # end

    def update?
      user_is_owner?
    end

    def destroy?
      user_is_owner?
    end

    private

    def user_is_owner?
      user == record.owner
    end

  class Scope < Scope
    def resolve
      scope.all # the same as Restaurant
    end

  end
end
