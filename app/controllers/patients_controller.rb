class PatientsController < ApplicationController

  before_action :set_patient,only: [:show,:appointments,:new_appointment]
  
  def index
    @patients = Patient.all
  end


  def new
    @patient = Patient.new
  end


  def create
    @patient = Patient.new(patient_params)
    respond_to do |format|
      if @patient.save
        format.html {redirect_to patient_path(@patient)}
      else
        format.html {render 'new'}
      end
    end
  end


  def show
  end
  
  def appointments
    @appointments = @patient.appointments 
  end

  def new_appointment
    @appointment = @patient.appointments.new
    respond_to do |format|
      format.html {render '/appointments/new'}
    end
  end


  private

  def set_patient
    @patient = Patient.find_by(id: params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :mobilenumber)
  end


end
