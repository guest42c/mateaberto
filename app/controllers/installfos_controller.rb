class InstallfosController < ApplicationController

  send_file params[:filename], :type => 'application/x-web-app-manifest+json'

end
