class MorphTypesController < ApplicationController
  before_filter :login_required
  before_filter :access, :only => [:new, :create, :edit]

  def index
    @morph_types = MorphType.all
  end

  def show
    @morph_type = MorphType.find(params[:id])
  end

  def new
    @morph_type = MorphType.new
  end

  def create
    @morph_type = MorphType.new(params[:morph_type])
    if @morph_type.save
      redirect_to morph_types_path, :notice => "Successfully created morph type."
    else
      render :action => 'new'
    end
  end

  def edit
    @morph_type = MorphType.find(params[:id])
  end

  def update
    @morph_type = MorphType.find(params[:id])
    if @morph_type.update_attributes(params[:morph_type])
      redirect_to morph_types_path, :notice  => "Successfully updated morph type."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @morph_type = MorphType.find(params[:id])
    @morph_type.destroy
    redirect_to morph_types_url, :notice => "Successfully destroyed morph type."
  end
end
