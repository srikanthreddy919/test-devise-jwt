class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json
  
  def create
    super
  end

  private
  def respond_with(resource, _opts = {})
    resource.persisted? ? register_success : register_failed
  end
  def register_success
    render json: { message: 'Signed up.' }
  end
  def register_failed
    render json: { message: "Signed up failure.", errors: resource.errors.full_messages }, status: 422
  end
end