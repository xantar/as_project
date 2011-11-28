class ClutchesController < ApplicationController
  before_filter :login_required

  def index
    @clutches = Clutch.all
  end

  def show
    @clutch = Clutch.find(params[:id])
  end

  def new
    @clutch = Clutch.new
  end

  def create
    @clutch = Clutch.new(params[:clutch])
    if @clutch.save
      redirect_to @clutch, :notice => "Successfully created clutch."
    else
      render :action => 'new'
    end
  end

  def edit
    @clutch = Clutch.find(params[:id])
    unless @clutch.user_id == current_user.id || current_user.manager || current_user==1
      redirect_to @clutch, :alert => "You do not have permission to edit #{@clutch.name}"
    end
  end

  def update
    @clutch = Clutch.find(params[:id])
    if @clutch.update_attributes(params[:clutch])
      redirect_to @clutch, :notice  => "Successfully updated clutch."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @clutch = Clutch.find(params[:id])
    @clutch.destroy
    redirect_to clutches_url, :notice => "Successfully destroyed clutch."
  end
end
