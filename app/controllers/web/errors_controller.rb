class Web::ErrorsController < Web::ApplicationController
  def not_found
    render :status => 404
  end
end
