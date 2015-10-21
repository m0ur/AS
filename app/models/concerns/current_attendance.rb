module CurrentAttendance
  extend ActiveSupport::Concern

  private

  def set_attendance
    @attendance = Attendance.find(session[:attendance_id])
  rescue ActiveRecord::RecordNotFound
    @attendance = Attendance.create
    session[:attendance_id] = @attendance.id
  end
end
