class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def authenticate!
    redirect_to '/auth/keycloak' unless session[:userinfo].present?
  end


  def destroy
    logout_url = "https://keycloak.dev.sefin.ro.gov.br/realms/kafka/protocol/openid-connect/logout?redirect_uri=#{CGI.escape(root_url)}"
    reset_session
    redirect_to logout_url
  end
  
end
