class AttendancePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all
      scope.where(user: user)
    end
  end
  def create?
    return true
  end

  def index?
    return true
  end

  def show?
    record.user == user
  end
end
