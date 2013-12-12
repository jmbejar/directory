class WebsitesController < ApplicationController

  layout "consumer"

  # GET /websites
  # GET /websites.json
  def index
    @websites = Website.all
  end

  # GET /websites/1
  # GET /websites/1.json
  def show
    @website = Website.find(params[:id])
  end
end
