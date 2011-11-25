class TreatmentsController < ApplicationController
  before_filter :login_required

  def index
    @treatments = Treatment.all
  end

  def show
    @treatment = Treatment.find(params[:id])
  end

  def new
    @treatment = Treatment.new
  end

  def create
    @treatment = Treatment.new(params[:treatment])
    if @treatment.save
      redirect_to session[:referer], :notice => "Successfully created treatment."
    else
      render :action => 'new'
    end
  end

  def edit
    @treatment = Treatment.find(params[:id])
  end

  def update
    @treatment = Treatment.find(params[:id])
    if @treatment.update_attributes(params[:treatment])
      redirect_to session[:referer], :notice  => "Successfully updated treatment."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @treatment = Treatment.find(params[:id])
    @treatment.destroy
    redirect_to treatments_url, :notice => "Successfully destroyed treatment."
  end
end
