class DashboardPolicy < Struct.new(:staff, :dashboard)
  def index?
    staff.admin?
  end

  def show?
    index?
  end
end