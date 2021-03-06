class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_locale

  include Admin::SessionsHelper

  private

  	def set_locale
  		I18n.locale = params[:locale] || I18n.default_locale
  	end

  	def default_url_options(options = {})
  		{ locale: I18n.locale }
  	end
end
