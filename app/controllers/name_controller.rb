class NameController < ApplicationController
  def show
    @custom = Custom.where("status = 3").order(:created_at).find(8)
    @redy = Custom.where("status = 2").order(:created_at).find(8)
  end
end
