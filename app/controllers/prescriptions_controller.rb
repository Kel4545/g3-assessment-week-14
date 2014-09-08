class PrescriptionsController < ApplicationController

  def show
    @patients = Patient.all
    @prescriptions = Medication.find(params[:id])
  end


  def new
    @patients = Patient.find(params[:id])
    @prescriptions = Medication.new
  end

  def create
    medications_params = params.require(:name).permit(:name, :dosage, :schedule, :starts_on, :ends_on).merge(patient_id: params[:patient_id])
    @prescriptions = Medication.new(medications_params)
    if @prescriptions.save
      redirect_to patient_prescription_path, notice: "Your prescription was created successfully!"
    else
      render :new
    end
  end

end