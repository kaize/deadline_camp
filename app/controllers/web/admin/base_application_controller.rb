class Web::Admin::BaseApplicationController < Web::ApplicationController
  helper_method :current_user, :user_signed_in?
end
