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
    unless @weight.user_id == current_user.id || current_user.manager || current_user==1
      redirect_to treatments_path, :alert => "You do not have permission to edit"
    end
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
    if @weight.user_id == current_user.id || current_user.manager || current_user==1
      @treatment.destroy
      redirect_to treatments_url, :notice => "Successfully destroyed treatment."
    else
      redirect_to treatments_path, :alert => "You do not have permission to delete"
    end
  end
end
