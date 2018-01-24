class PhysiciansController < ApplicationController
  before_action :set_physician,only: [:show,:appointments]
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

  private

  def physician_params
    params.require(:physician).permit(:name, :medical_license_id)
  end
  
  def set_physician
    @physician = Physician.find_by(id: params[:id])
  end
  
end
