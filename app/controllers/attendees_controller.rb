class AttendeesController < ApplicationController
  def index
    @attendees = Attendee.all
  end

  def show
    @attendee = Attendee.find(params[:id])
    @attendees = Attendee.all
  end

  def edit
    @attendee = Attendee.find(params[:id])
  end

  def update
    @attendee = Attendee.find(params[:id])

    if @attendee.update_attributes(attendee_params)
      render :show
    else
      flash[:notice] = @attendee.errors.full_messages.to_sentance
      render :edit
    end
  end

  def new
    @tournament = Tournament.find(params[:tournament_id])
    @attendee = Attendee.new
  end

  def create
    @tournament = Tournament.find(params[:tournament_id])
    @attendee = Attendee.new(attendee_params)
     
    @attendee.tournaments << @tournament

    if @attendee.save
      redirect_to tournament_path(@tournament)
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
    params.require(:attendee).permit(:name, :home_town, :tournament_id)
  end
end