class AttendancesController < ApplicationController

  def index
    @user = current_user
    @attendances = policy_scope(Attendance).where(user: current_user)
    authorize @attendances
  end

  def new
    @attendance = Attendance.new
  end

  def create
    id = params["attendance"]["meetup_id"].to_i
    @attendance = Attendance.new(meetup_id: id)
    @attendance.user_id = current_user.id
    authorize @attendance
    if @attendance.save
      redirect_to attendance_path(@attendance)
    else
      render :new
      # ?back to show
    end
  end

  def show
    @attendance = Attendance.find(params[:id])
    authorize @attendance
  end
end
