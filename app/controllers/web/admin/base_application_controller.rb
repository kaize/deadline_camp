class Web::Admin::BaseApplicationController < Web::ApplicationController
  layout 'admin/application'

  helper_method :current_user, :user_signed_in?
end
