class PhysiciansController < ApplicationController
  before_action :set_physician,only: [:show,:appointments,:new_appointment]
  def new
    @physician = Physician.new
  end

  def create
    @physician = Physician.new(physician_params)
    if @physician.save
      redirect_to physician_path(@physician)
    else
      render 'new'
    end
  end

  def index
    @physicians = Physician.all
  end

  def show
  end

  def appointments
    @appointments = @physician.appointments 
  end

  def new_appointment
    @appointment = @physician.appointments.new
    render '/appointments/new'
  end

  private

  def physician_params
    params.require(:physician).permit(:name, :medical_license_id)
  end
  
  def set_physician
    @physician = Physician.find_by(id: params[:id])
  end
  
end
