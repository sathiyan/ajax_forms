class BandsController < ApplicationController
  def index
    @bands = Band.all
    @band = Band.new
  end

  def show
    @band = Band.find(params[:id])
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(params[:band])
    respond_to do |format|
      if @band.save
        format.html { redirect_to bands_path, :notice => 'Successfully created band.' }
        format.js
      else
        format.html { render :action => :new }
        format.js
      end
    end
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    if @band.update_attributes(params[:band])
      redirect_to @band, :notice => "Successfully updated band."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    respond_to do |format|
      format.html { redirect_to bands_path, :notice => "Successfully destroyed band." }
      format.js
    end
  end
end
