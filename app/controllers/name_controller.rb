class NameController < ApplicationController
  def show
    @custom = Custom.where("status = 3")
    @redy = Custom.where("status = 2")
  end
end
