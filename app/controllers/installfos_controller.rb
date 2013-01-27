class InstallfosController < ApplicationController

  @data = File.read("#{Rails.root}/public/installfos")
  def get
    #render :file => File.join(Rails.root, 'public', 'manifest.webapp'), 
    #  :status => 200, :layout => false, :content_type => "application/x-web-app-manifest+json"
    render :json => @data, :content_type => "application/x-web-app-manifest+json", :layout => false  
  end

end
