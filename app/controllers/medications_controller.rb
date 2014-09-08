class MedicationsController < ApplicationController

  def show
    @medications = Medications.find(params[:id])
    @prescriptions = Prescription.all
    @patients = Patient.all
  end
end