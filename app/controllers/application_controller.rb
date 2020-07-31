class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	before_action :configure_permitted_parameters, if: :devise_controller?
	Refile.secret_key = 'c00f7d213aa1055c622e9260d525f66359467b79560711ae0c5219d9cdfeb9636baf4084ad1d52b8eee17e0201b389cc831c3e11aa582dc1c5dc09cde3697c81'
	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
	end
end
