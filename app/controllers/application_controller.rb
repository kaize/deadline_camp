class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :basic_auth if Rails.env.staging?
end

