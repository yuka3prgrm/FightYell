class FightsController < ApplicationController
  def index
    @fights = Fight.all
  end

  def new
    @fight = Fight.new
  end

  def create
    @fight = Fight.new(fight_params)
    if @fight.save
      redirect_to root_path
    else
      render :new
    end
  end

  

  private

  def fight_params
    params.require(:fight).permit(:title,:goal,:unit_id).merge(user_id: current_user.id)
  end
end
