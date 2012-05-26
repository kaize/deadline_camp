class Web::Admin::ApplicationController < Web::Admin::BaseApplicationController
  before_filter :authenticate_user!
end
