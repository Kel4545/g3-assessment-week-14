class PatientsController < ApplicationController

  def index
    @patients = Patient.find(params[:id])
    @medications = Medication.all
  end

end