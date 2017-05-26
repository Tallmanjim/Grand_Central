class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :load_companies

  layout :layout_by_resource

  private

  def load_companies
    # Had to change this statement because it included companies without ID's
    # @companies = current_user.companies
    @companies = Company.where(user_id: current_user.id)
  end

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end
