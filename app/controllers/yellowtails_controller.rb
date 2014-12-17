class YellowtailsController < ApplicationController
  def show
  end

  def new
    @attendee = Attendee.find(params[:attendee_id])
    @yellowtail = Yellowtail.new
  end

  def create
    @attendee = Attendee.find(params[:attendee_id])
    @yellowtail = Yellowtail.new(yellowtail_params)

    @yellowtail.attendee << @attendee

  if @yellowtail.save
      redirect_to new_attendee_yellowtail_path(@attendee)
    else
      flash[:notice] = @yellowtail.errors.full_messages.to_sentance
      render :new
    end
  end

private

  def yellowtail_params
    params.require(:yellowtail).permit(:yellowtail_weight, :fishing_day, :attendee_id)
  end
end