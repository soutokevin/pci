class EmailController < ApplicationController
  def create
    EmailMailer.contact(email_params).deliver_now
  end

  private

  def email_params
    params.require(:email).permit(:name, :email, :phone, :description, :reason)
  end
end
