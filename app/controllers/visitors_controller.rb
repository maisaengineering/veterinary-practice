class VisitorsController < ApplicationController

  def index
    @appointments = Appointment.order('created_at DESC')
  end

end
