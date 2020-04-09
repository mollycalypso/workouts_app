class WorkoutPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  

  def show
    authorize(@workout)
  end

  def new?
    return true
  end

  def create?
    return true
  end


def update? 
  record.user == user
end


def edit?
  record.user == user
end

def destroy?
  record.user == user
end


end