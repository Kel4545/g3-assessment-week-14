class PrescriptionsController < ApplicationController

  def new
    @patients = Patient.find(params[:patient_id])
    @prescriptions = Prescription.new
    @medications = Medication.all
  end


  def create
    Prescription.new(
      medication_id: params[:medication_id],
      patient_id: params[:patient_id],
      dosage: params[:prescription][:dosage],
      starts_on: params[:prescription][:start_date],
      ends_on: params[:prescription][:end_date]
    )
    if @prescriptions.save
      redirect_to patient_prescription_path, notice: "Your prescription was created successfully!"
    else
      render :new
    end
  end

end


