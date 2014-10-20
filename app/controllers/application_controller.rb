require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ActionController::Responder
  respond_to :html

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  respond_to :html, :json

  # def after_sign_in_path_for(resource)
  #   sign_in_url = url_for(:action => 'new', :controller => 'sessions', :only_path => false, :protocol => 'http')
  #   if request.referer == sign_in_url
  #     super
  #   else
  #     stored_location_for(resource) || request.referer || root_path
  #   end
  # end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) << :username
    devise_parameter_sanitizer.for(:sign_up) << :username
  end
end
