module AuthHelper
  def basic_auth
    authenticate_or_request_with_http_basic do |user, password|
      user == configus.basic_auth.username && password == configus.basic_auth.password
    end
  end

  def sign_in(user)
    session[:user_id] = user.id
  end

  def sign_out
    session[:user_id] = nil
  end

  def signed_in?
    session[:user_id] && User.find_by_id(session[:user_id])
  end

  def authenticate_user!
    redirect_to new_admin_session_path unless signed_in?
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end
end
