class GolvesController < ApplicationController
   def show
  end

  def new
    @golf = Golf.new
  end

  def create
    @golf = Golf.new

  if @golf.save
      redirect_to root_path
    else
      flash[:notice] = @golf.errors.full_messages.to_sentance
      render :new
    end
  end
end