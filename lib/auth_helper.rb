module AuthHelper
  def basic_auth
    authenticate_or_request_with_http_basic do |user, password|
      user == configus.basic_auth.username && password == configus.basic_auth.password
    end
  end

  # User auth
  def user_sign_in(user)
    session[:user_id] = user.id
  end

  def user_sign_out
    session[:user_id] = nil
  end

  def user_signed_in?
    session[:user_id] && User.find_by_id(session[:user_id])
  end

  def authenticate_user!
    redirect_to new_admin_session_path unless user_signed_in?
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  # Member auth
  def member_sign_in(member)
    session[:member_id] = member.id
  end

  def member_sign_in_by_token
    if params[:auth_token]
      member = Member.find_by_auth_token!(params[:auth_token])
      member_sign_in(member)
    end
  end

  def member_sign_out
    session[:member_id] = nil
  end

  def member_signed_in?
    session[:member_id] && Member.find_by_id(session[:member_id])
  end

  def authenticate_member!
    redirect_to new_session_path unless member_signed_in?
  end

  def current_member
    @current_member ||= Member.find(session[:member_id])
  end
end
