class MedicationsController < ApplicationController

  def show
    @medications = Medications.all
    @prescriptions = Prescriptions.all
  end
end