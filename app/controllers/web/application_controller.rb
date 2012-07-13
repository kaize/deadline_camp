class Web::ApplicationController < ApplicationController
  include AuthHelper
  include FlashHelper

  helper_method :title

  before_filter do
    title t('base_name')
    #gon.locale = I18n.locale
    gon.locale = "en"
  end

  private

  def title(part = nil)
    @parts ||= []
    unless part
      return nil if @parts.blank?
      return @parts.reverse.join(' - ')
    end
    @parts << part
  end
end
