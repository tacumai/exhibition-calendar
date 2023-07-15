class MuseumsController < ApplicationController
  def show
    @museum = Museum.find(params[:id])
  end
  
  def new
    @museum     = Museum.new
    @prefecture = Prefecture.all
  end
  
  def create
    @museum = Museum.new(
      name:       museum_params[:name],
      address:    museum_params[:address],
      opening_at: museum_params[:opening_at],
      closing_at: museum_params[:closing_at],
      closed_day: museum_params[:closed_day].to_i,
      prefecture: Prefecture.find(museum_params[:prefecture_id])
    )
    
    if @museum.save
      redirect_to @museum
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
    @museum     = Museum.find(params[:id])
    @prefecture = Prefecture.all
  end
  
  def update
    @museum = Museum.find(params[:id])
    
    if @museum.update(
      name:       museum_params[:name],
      address:    museum_params[:address],
      opening_at: museum_params[:opening_at],
      closing_at: museum_params[:closing_at],
      closed_day: museum_params[:closed_day].to_i,
      prefecture: Prefecture.find(museum_params[:prefecture_id])
    )
      redirect_to @museum
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    Museum.find(params[:id]).destroy
    redirect_to root_path, status: :see_other
  end
  
  private def museum_params
    params.require(:museum).permit(:name, :address, :opening_at, :closing_at, :closed_day, :prefecture_id)
  end
end
