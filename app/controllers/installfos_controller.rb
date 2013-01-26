class InstallfosController < ApplicationController

  def get
    send_file params[:filename], :type => 'application/x-web-app-manifest+json'
  end

end
