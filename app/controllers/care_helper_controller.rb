class CareHelperController < ApplicationController


  def index
    
  end

  def new
    @profile = Profile.new
  end

  def create
    Contact.create(contact_params)
    redirect_to root_path
  end



  private

  def contact_params
    params.permit(
      :person, :relationship, :address, :email, :phone, :patient_id
    )
  end
end
