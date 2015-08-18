class AppointmentsController < ApplicationController

  
  def new
    @appt = Appointment.new
    render :new
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

  def edit
    @appt = Appointment.find(params[:id])
    if current_user.appointments.include? @appt
      render :edit
    else
      redirect_to profile_path
    end
  end

  def update
    appt = Appointment.find(params[:id])
    if current_user.appointments.include? appt
      appt.update_attributes(appt_params)
      redirect_to profile_path(current_user)
    else
      redirect_to profile_path
    end
  end

  def destroy
    appt = Appointment.find(params[:id])
    if current_user.appointments.include? appt
      appt.destroy
      redirect_to profile_path(current_user)
    else
      redirect_to profile_path(current_user)
    end
  end

  private
    def appt_params
      params.require(:appointment).permit(:day, :description, :workout_id, :user_id)
    end

end
