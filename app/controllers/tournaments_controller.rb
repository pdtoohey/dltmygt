class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all
    @attendees = Attendee.all
  end

   def show
    @tournament = Tournament.find(params[:id])
    @attendees = Attendee.all
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(tournament_params)

    if @tournament.save
      redirect_to root_path
    else
      flash[:notice] = @tournament.errors.full_messages.to_sentance
      render :new
    end
  end

  def edit
    @tournament = Tournament.find(params[:id])
  end

  def destroy
    @tournament = Tournament.find(params[:id])
    @tournament.destroy

    redirect_to '/'
  end

private

  def tournament_params
    params.require(:tournament).permit(:name, :start_date, :end_date, :location, :host)
  end
end
