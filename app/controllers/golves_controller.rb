class GolvesController < ApplicationController
  def index
    
  end

  def show

  end

  def new
    @attendee = Attendee.find(params[:attendee_id])
    @golf = Golf.new
  end

  def create
    @attendee = Attendee.find(params[:attendee_id])
    @golf = Golf.new(golf_params)

    @golf.attendee = @attendee

  if @golf.save
      redirect_to attendee_path(@attendee)
    else
      flash[:notice] = @golf.errors.full_messages.to_sentance
      render :new
    end
  end

private

  def golf_params
    params.require(:golf).permit(:stroke_score, :stroke_number, :attendee_id, :tournament_id)
  end
end