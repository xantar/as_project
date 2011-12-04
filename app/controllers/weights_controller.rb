class WeightsController < ApplicationController
  before_filter :login_required

  def index
    @weights = Weight.all

    respond_to do |format|
      format.html
      format.xml  
    end
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
    unless @weight.user_id == current_user.id || current_user.manager || current_user==1
      redirect_to dragons_path, :alert => "You do not have permission to edit this weight"
    end
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
    if @weight.user_id == current_user.id || current_user.manager || current_user==1
      @weight.destroy
      redirect_to weights_url, :notice => "Successfully destroyed weight."
    else
      redirect_to weights_path, :alert => "You do not have permission to delete"
    end
  end

  
end
