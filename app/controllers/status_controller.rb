class StatusController < ApplicationController

  def show
    if (@isopen)
      send_file Rails.public_path+'/aberto.png', :type => 'image/png', :disposition => 'inline'
    else
      send_file Rails.public_path+'/fechado.png', :type => 'image/png', :disposition => 'inline'
    end
  end

end
