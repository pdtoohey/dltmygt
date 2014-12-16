class YellowtailsController < ApplicationController
  def show
  end

  def new
    @yellowtail = Yellowtail.new
  end

  def create
    @yellowtail = Yellowtail.new

  if @yellowtail.save
      redirect_to root_path
    else
      flash[:notice] = @yellowtail.errors.full_messages.to_sentance
      render :new
    end
  end
end