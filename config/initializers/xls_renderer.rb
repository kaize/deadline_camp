ActionController::Renderers.add :xls do |xls, options|
  send_data(xls.respond_to?(:to_xls) ? xls.to_xls(options) : xls, :type => :xls)
end
