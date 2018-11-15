class MeetupPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # scope.where(user: user)
    end
  end

  def index?
    return true
  end

  def create?
    return true
  end

  def new?
    true
  end

  def show?
    return true
  end

  def update?
    record.user == user
  end

  def edit?
    update?
  end

  def destroy?
    record.user == user
  end
end
