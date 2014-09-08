class MedicationsController < ApplicationController

  def show
    @medications = Medications.find(params[:id])
  end
end