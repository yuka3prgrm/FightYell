class YellsController < ApplicationController
  
  def new
    @fight = Fight.find(params[:fight_id])
    @yell = Yell.new
  end

  def create
    @fight = Fight.find(params[:fight_id])
    @yell = @fight.build_yell(yell_params)
      if @yell.save
        redirect_to invitation_path
      else
        render :new
      end
  end

  def invitation
    # 必要な処理を記述
  end

  private

  def yell_params
    params.require(:yell).permit(:friend,:content,:image).merge(fight_id: params[:fight_id])
  end

end
