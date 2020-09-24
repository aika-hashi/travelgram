class ApplicationController < ActionController::Base
   before_action :authenticate_user!
    before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:image,:nickname,:email,:password,:password_confirmation,:firstname, :familyname, :firstname_kana, :familyname_kana, :date,])
  end

  # private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]  # 環境変数を読み込む記述に変更
    end
  end
end
