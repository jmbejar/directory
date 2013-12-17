class WebsitesController < ApplicationController

  layout "consumer"

  before_action :set_locate

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

  private

  def set_locate
    I18n.locale = params[:locale]
  end
end
