class MedicationsController < ApplicationController

  def show
    @medications = Medication.find(params[:id])
  end
end