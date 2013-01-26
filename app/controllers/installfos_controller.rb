class InstallfosController < ApplicationController

  def get
    @headers["Content-Type"] = "application/x-web-app-manifest+json"
    send_file params[:filename], :type => 'application/x-web-app-manifest+json'
  end

end
