class PhysiciansController < ApplicationController
  before_action :set_physician,only: [:show,:appointments,:new_appointment]
  def new
    @physician = Physician.new
  end

  def create
    @physician = Physician.new(physician_params)
    respond_to do |format|
      if @physician.save
        format.html {redirect_to physician_path(@physician)}
      else
        format.html {render 'new'}
      end
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
    respond_to do |format|
      format.html {render '/appointments/new'}
    end
  end

  private

  def physician_params
    params.require(:physician).permit(:name, :medical_license_id)
  end
  
  def set_physician
    @physician = Physician.find_by(id: params[:id])
  end
  
end
