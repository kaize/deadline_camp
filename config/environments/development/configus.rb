ActionDispatch::Reloader.to_prepare do
    load Rails.root.join('lib/configus.rb')
end
