class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all.order("appointment_date DESC")
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render 'new'
    end
  end

  def show
    @appointment = Appointment.find_by(id: params[:id])
  end

  private

  def appointment_params
    params.require(:appointment).permit(:physician_id,:patient_id,:appointment_date)
  end
end
