class Web::PagesController < Web::ApplicationController
  def show
    @page = Page.find_by_uri!(params[:id])
  end
end
