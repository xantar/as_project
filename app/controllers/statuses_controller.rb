class StatusesController < ApplicationController
  before_filter :login_required
  before_filter :access, :only => [:new, :create, :edit, :delete]

  def index
    @statuses = Status.all
  end

  def show
    @status = Status.find(params[:id])
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(params[:status])
    if @status.save
      redirect_to statuses_url, :notice => "Successfully created status."
    else
      render :action => 'new'
    end
  end

  def edit
    @status = Status.find(params[:id])
  end

  def update
    @status = Status.find(params[:id])
    if @status.update_attributes(params[:status])
      redirect_to statuses_url, :notice  => "Successfully updated status."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @status = Status.find(params[:id])
    @status.destroy
    redirect_to statuses_url, :notice => "Successfully destroyed status."
  end
end
