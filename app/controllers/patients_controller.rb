class PatientsController < ApplicationController

  def index
    @patients = Patient.find(params[:id])
    @medications = Medication.all
    @prescriptions = Prescription.all
  end

end