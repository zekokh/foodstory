class StatisticsController < ApplicationController
  def index
    @customers = Custom.all
  end
end
