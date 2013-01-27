class InstallfosController < ApplicationController
  before_filter :load_manifest

  def load_manifest
    @data = File.read("#{Rails.public_path}/installfos")
  end  
  
  def get
    #render :json => @data
    render :json => @data, :content_type => "application/x-web-app-manifest+json", :layout => false  
  end

end
