class MeetupsController < ApplicationController
  def index
    @meetups = Meetup.all
  end

  def show
    @meetup = Meetup.find(params[:id])
    @attendance = Attendance.new
  end

  def edit
    @meetup = Meetup.find(params[:id])
  end

  def update
    @meetup = Meetup.find(params[:id])
    if @meetup.update(meetup_params)
      redirect_to meetup_path(@meetup)
    else
      render :edit
    end
  end

  def collection
    @meetups_last_10 = Meetup.last(10)
  end

  def new
    @meetup = Meetup.new
  end

  def create
    @meetup = Meetup.new(meetup_params)
    @meetup.user = current_user
    if @meetup.save
      redirect_to meetup_path(@meetup)
    else
      render :new
    end
  end

  def destroy
    @meetup = Meetup.find(params[:id])
    @meetup.destroy
    redirect_to meetups_path
  end

  private

  def meetup_params
    params.require(:meetup).permit(:location, :capacity, :date, :description, :price, :game)

  end

end
