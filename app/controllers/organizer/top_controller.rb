class Organizer::TopController < Organizer::Base
  def index
    render action: "index"
  end
  
end
