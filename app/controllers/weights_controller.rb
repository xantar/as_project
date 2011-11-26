class WeightsController < ApplicationController
  before_filter :login_required

  def index
    @weights = Weight.all
  end

  def show
    @weight = Weight.find(params[:id])
  end

  def new
    @weight = Weight.new
  end

  def create
    @weight = Weight.new(params[:weight])
    if @weight.save
      redirect_to session[:referer], :notice => "Successfully created weight."
    else
      render :action => 'new'
    end
  end

  def edit
    @weight = Weight.find(params[:id])
  end

  def update
    @weight = Weight.find(params[:id])
    if @weight.update_attributes(params[:weight])
      redirect_to @weight, :notice  => "Successfully updated weight."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @weight = Weight.find(params[:id])
    @weight.destroy
    redirect_to weights_url, :notice => "Successfully destroyed weight."
  end

  
end
