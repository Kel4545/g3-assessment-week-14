class PrescriptionsController < ApplicationController

  def new
    @patients = Patient.find(params[:patient_id])
    @prescriptions = Prescription.new
    @medications = Medication.all
  end


  def create
    prescriptions_params = params.require(:dosage).permit(:medication_id, :schedule, :starts_on, :ends_on).merge(patient_id: params[:patient_id])
    @prescriptions = Medication.new(prescriptions_params)
    if @prescriptions.save
      redirect_to patient_prescription_path, notice: "Your prescription was created successfully!"
    else
      render :new
    end
  end

end
