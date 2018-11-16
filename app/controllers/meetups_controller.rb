class MeetupsController < ApplicationController
  def index


    @meetups = policy_scope(Meetup)
    #@meetups = Meetup.all
    authorize @meetups
  end

  def show
    @meetup = Meetup.find(params[:id])
    @attendance = Attendance.new
    authorize @meetup
    # authorize @attendance
  end

  def edit
    @meetup = policy_scope(Meetup).find(params[:id])
    authorize @meetup
  end

  def update
    @meetup = Meetup.find(params[:id])
    authorize @meetup
    if @meetup.update(meetup_params)
      redirect_to meetup_path(@meetup)
    else
      render :edit
    end
  end

  def new
    @meetup = Meetup.new
    authorize @meetup
  end

  def create
    @meetup = Meetup.new(meetup_params)
    @meetup.user = current_user
    authorize @meetup
    if @meetup.save
      redirect_to meetup_path(@meetup)
    else
      render :new
    end
  end

  def destroy
    @meetup = Meetup.find(params[:id])
    authorize @meetup
    @meetup.destroy
    flash[:info] = "Event deleted"
    redirect_to attendances_path
  end

  private

  def meetup_params
    params.require(:meetup).permit(:location, :capacity, :date, :description, :price, :game, :photo)
  end
end
