class ApplicationController < ActionController::Base
  layout :set_layout

  class Forbidden < ActionController::ActionControllerError; end
  class IpAddresRejected < ActionController::ActionControllerError;end
 
 include ErrorHandlers if Rails.env.production?

  private def set_layout
    if params[:controller].match(%r{\A(instructor|organizer|customer)/})
      Regexp.last_match[1]
    else
      "customer"
    end
  end
end