class CustomController < ApplicationController
  def index
    @customers = Custom.where("status > 1").order(created_at: :desc)
  end

  def new
    @customers = Custom.new
  end

  def edit
    @customers = Custom.find(params[:id])
  end

  def update
    @customers  = Custom.find(params[:id])
    if @customers.update(name: params.require(:custom).permit(:name)[:name])
      redirect_to custom_index_path, notice: 'Информация обновлена в системе!'
    else
      render action: 'edit'
    end
  end

  def create
    @customers = Custom.new(name: params.require(:custom).permit(:name)[:name], status: 3)
    if @customers.save
      redirect_to custom_index_path, notice: 'Информация добавлена в систему!'
    else
      render action: 'new'
    end
  end

  def destroy
    @customers = Custom.find(params[:id])
    @customers.update(status: 0, date_of_del: Time.now)
    redirect_to custom_index_path, notice: 'Информация удалена из системы!'
  end

  def cutom_params
    params.require(:custom).permit(:name, :status)
  end

  def ready
    @customers = Custom.find(params[:id])
    @customers.update(status: 2, date_of_ready: Time.now)
    redirect_to custom_index_path, notice: 'Данные обновленны!'
  end

  def gave
    @customers = Custom.find(params[:id])
    @customers.update(status: 1, date_of_gave: Time.now)
    redirect_to custom_index_path, notice: 'Данные обновленны!'
  end
end
