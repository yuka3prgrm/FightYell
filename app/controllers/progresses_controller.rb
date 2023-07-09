class ProgressesController < ApplicationController
  before_action :authenticate_user!
  def index
    @progresses =Progress.all
    @progress = Progress.new
    @fight = Fight.find(params[:fight_id])
  end

  def create
    @fight = Fight.find(params[:fight_id])
    @progress = @fight.progresses.new(progress_params)
    if @progress.save
      redirect_to fight_progresses_path(@fight)
    else
      render :index
    end
  end
    

  private

  def progress_params
    params.require(:progress).permit(:study)
  end

end
