class WeightTypesController < ApplicationController
  before_filter :login_required
  before_filter :access, :only => [:new, :create, :edit]

  def index
    @weight_types = WeightType.all
  end

  def show
    @weight_type = WeightType.find(params[:id])
  end

  def new
    @weight_type = WeightType.new
  end

  def create
    @weight_type = WeightType.new(params[:weight_type])
    if @weight_type.save
      redirect_to weight_types_url, :notice => "Successfully created weight type."
    else
      render :action => 'new'
    end
  end

  def edit
    @weight_type = WeightType.find(params[:id])
  end

  def update
    @weight_type = WeightType.find(params[:id])
    if @weight_type.update_attributes(params[:weight_type])
      redirect_to weight_types_url, :notice  => "Successfully updated weight type."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @weight_type = WeightType.find(params[:id])
    @weight_type.destroy
    redirect_to weight_types_url, :notice => "Successfully destroyed weight type."
  end
end
