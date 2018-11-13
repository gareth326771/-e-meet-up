class AttendancesController < ApplicationController
  def new
    @attendance = Attendance.new
  end

  def create
    id = params["attendance"]["meetup_id"].to_i
    @attendance = Attendance.new(meetup_id: id)
    @attendance.user_id = current_user.id
    if @attendance.save
      redirect_to attendance_path(@attendance)
    else
      render :new
      # ?back to show
    end
  end


end
