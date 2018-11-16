class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    true
  end

  def edit?
    update?
  end

  def update?
    record.id == user.id
  end
end
