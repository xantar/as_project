class HatchesController < ApplicationController
  def index
    @hatches = Hatch.all
  end

  def show
    @hatch = Hatch.find(params[:id])
  end

  def new
    @hatch = Hatch.new
  end

  def create
    @hatch = Hatch.new(params[:hatch])
    if @hatch.save
      redirect_to @hatch, :notice => "Successfully created hatch."
    else
      render :action => 'new'
    end
  end

  def edit
    @hatch = Hatch.find(params[:id])
  end

  def update
    @hatch = Hatch.find(params[:id])
    if @hatch.update_attributes(params[:hatch])
      redirect_to @hatch, :notice  => "Successfully updated hatch."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @hatch = Hatch.find(params[:id])
    @hatch.destroy
    redirect_to hatches_url, :notice => "Successfully destroyed hatch."
  end
end
