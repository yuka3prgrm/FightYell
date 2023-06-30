class YellsController < ApplicationController
  def new
    @yell = Yell.new
  end

  def create
    @yell = Yell.new(yell_params)
    if @yell.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def yell_params
    params.require(:yell).permit(:friend,:content,:image).merge(fight_id: params[:fight_id])
  end

end
