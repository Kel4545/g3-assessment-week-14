class MedicationsController < ApplicationController

  def show
    @patients = Patient.all
    @medications = Medication.find(params[:id])
  end


  def new
    @patients = Patient.find(params[:id])
    @medications = Medication.new
  end

  def create
    medications_params = params.require(:name).permit(:name, :dosage, :schedule, :starts_on, :ends_on).merge(patient_id: params[:patient_id])
    @medications = Medication.new(medications_params)
    if @medications.save
      redirect_to patient_medication_path, notice: "Your prescription was created successfully!"
    else
      render :new
    end
  end

end