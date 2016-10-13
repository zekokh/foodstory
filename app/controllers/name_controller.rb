class NameController < ApplicationController
  def show
    @custom = Custom.where("status = 3").order(created_at: :desc).take(8)
    @redy = Custom.where("status = 2").order(created_at: :asc).take(8)
  end
end
