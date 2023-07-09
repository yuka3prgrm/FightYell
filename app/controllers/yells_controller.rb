class YellsController < ApplicationController
  
  def new
    @fight = Fight.find(params[:fight_id])
    @yell = Yell.new
  end

  def create
    @fight = Fight.find(params[:fight_id])
    if @fight.yell.present?
      redirect_to root_path
    else
      @yell = @fight.build_yell(yell_params)
      if @yell.save
        redirect_to action: :index
      else
        render :new
      end
    end
  end

  private

  def yell_params
    params.require(:yell).permit(:friend,:content,:image).merge(fight_id: params[:fight_id])
  end

end
