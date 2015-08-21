class AppointmentsController < ApplicationController

  
  def new
    @appt = Appointment.new
    render :new
  end 

  def create
    if current_user
      p appt_params
      appt = Appointment.new(appt_params)
      unless Appointment.where(user_id: appt_params[:user_id], workout_id: appt_params[:workout_id], day: appt_params[:day]).any?
        if appt.save
          redirect_to profile_path(current_user)
        else
          redirect_to new_user_appointment_path
          flash[:error] = "Something went wrong, please try again."
        end
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
    appt = Appointment.where("workout_id = ? AND user_id = ? AND day = ?", params[:workout_id], params[:user_id], params[:day])
    if current_user.id = params[:user_id]
      Appointment.destroy(appt)
      redirect_to :back
    else
      redirect_to login_path
    end
  end

  private
    def appt_params
      params.require(:appointment).permit(:day, :description, :workout_id, :user_id)
    end

end
