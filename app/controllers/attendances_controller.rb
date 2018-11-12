class AttendancesController < ApplicationController
  def new
    @attendance = Attendance.new
  end

  def create
    id = params[:attendance]["meetup_id"].to_i
    @attendance = Attendance.new(meetup_id: id)
    puts "i get here"
    @attendance.user_id = current_user.id
    @attendance.save!
    if @attendance.save!
      redirect_to attendance_path
    else
      render :new
      # ?back to show
    end
  end


end
