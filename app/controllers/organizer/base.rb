class Organizer::Base < ApplicationController
  private def current_organization
    if session[:organization_id]
      @current_organization ||=
      Organization.find_by(id: session[:organization_id])
    end
  end

  helper_method :current_organization
end