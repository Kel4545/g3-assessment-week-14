class PatientsController < ApplicationController

  def index
    @patients = Patient.find(params[:id])
  end

end