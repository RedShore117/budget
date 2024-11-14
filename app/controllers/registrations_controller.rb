class RegistrationsController < ApplicationController
  allow_unauthenticated_access only: %i[ new create ]

  def new
    redirect_to root_url if authenticated?
  end

  def create
    user = User.new(params.permit(:email_address, :password))
    if user.save(validate: true)
      start_new_session_for user
      redirect_to after_authentication_url, notice: "Signed up successfully"
    else
      redirect_to new_registration_path, alert: user.errors.full_messages.to_sentence
    end
  end
end
