module FlashHelper
  def flash_translate(key)
    scope = [:flash, :controllers]
    scope += params[:controller].split('/')
    scope << params[:action]

    t(key, :scope => scope)
  end
end
