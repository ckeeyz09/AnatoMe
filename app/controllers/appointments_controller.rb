class AppointmentsController < ApplicationController
  def new
  end 

  def create
    if current_user
      appt = Appointment.new(appt_params)
      if appt.save
        redirect_to profile_path(current_user)
      else
        redirect_to new_user_appointment_path
        flash[:error] = "Something went wrong, please try again."
      end
    end
  end

end
