class PropertyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def index
      return true
    end

    def create?
      return true
    end

    def update?
      return true
    end
  end
end
