class ApplicationController < ActionController::Base
  before_filter :check_open
  protect_from_forgery

  def check_open
    @current_checkins = Checkin.where("leave >= ? and arrive <= ?", Time.now.to_datetime, Time.now.to_datetime).order("leave")
    if @current_checkins.empty?
      @isopen = false
    else
      @isopen = true
    end
  end
end
