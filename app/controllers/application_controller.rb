class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  #もしdeviseの処理を行う場合、configure_permitted_parametersというものを実行して。
  private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:email])
    end
end
