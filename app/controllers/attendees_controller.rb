class AttendeesController < ApplicationController
  def show
    @attendee = Attendee.find(params[:id])
    @attendees = Attendee.all
  end

  def edit
    @attendee = Attendee.find(params[:id])
  end

  def new
    @attendee = Attendee.new
  end

  def create
    @attendee = Attendee.new(attendee_params)

    if @attendee.save
      redirect_to root_path
    else
      flash[:notice] = @attendee.errors.full_messages.to_sentance
      render :new
    end
  end

  def destroy
    @attendee = Attendee.find(params[:id])
    @attendee.destroy

    redirect_to '/'
  end
  
private

  def attendee_params
    params.require(:attendee).permit(:name, :home_town)
  end
end