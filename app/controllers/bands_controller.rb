class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
    render :partial => 'form', :locals => {:band => @band}
  end

  def create
    @band = Band.new(params[:band])
    respond_to do |format|
      if @band.save
        format.js
      else
        format.js { render :partial => 'error' }
      end
    end
  end

  def edit
    @band = Band.find(params[:id])
    render :partial => 'form', :locals => {:band => @band}
  end

  def update
    @band = Band.find(params[:id])
    respond_to do |format|
      if @band.update_attributes(params[:band])
        format.js
      else
        format.js { render :partial => 'error' }
      end
    end
  end

  def destroy
    @band = Band.find(params[:id])
    respond_to do |format|
      if @band.destroy
        format.js
      else
        format.js { render :partial => 'error' }
      end
    end
  end
end
