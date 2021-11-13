# frozen_string_literal: true

class ApplicationPolicy
  attr_reader :staff, :record

  def initialize(staff, record)
    @staff = staff
    @record = record
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  class Scope
    def initialize(staff, scope)
      @staff = staff
      @scope = scope
    end

    def resolve
      scope.all
    end

    private

    attr_reader :staff, :scope
  end
end
