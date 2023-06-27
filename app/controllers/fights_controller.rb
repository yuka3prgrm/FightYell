class FightsController < ApplicationController
  def index
  end

  def new
    @fight = Fight.new
  end

  def create
  end
end
