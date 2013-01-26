class InstallfosController < ApplicationController

  def get
    #send_file '/manifest.webapp', :type => "application/x-web-app-manifest+json"
    #render :file => "manifest.webapp", 
    #  :content_type => 'text/json', :layout => false
    render :file => File.join(Rails.root, 'public', 'manifest.webapp'), 
      :status => 200, :layout => false, :content_type => "application/x-web-app-manifest+json"
  end

end
