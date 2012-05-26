class Web::Admin::BaseApplicationController < Web::ApplicationController
  layout 'admin/application'

  helper_method :current_user, :signed_in?
end
