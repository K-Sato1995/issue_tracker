class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_action :authenticate

  private

  def authenticate
    return true if Rails.env.development?
    return head :unauthorized if session[:token] == ''
  end
end
