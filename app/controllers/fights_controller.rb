class FightsController < ApplicationController
  before_action :authenticate_user!
  def index
    @fights = current_user.fights
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
