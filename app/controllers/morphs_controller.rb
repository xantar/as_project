class MorphsController < ApplicationController
  before_filter :login_required

  def index
    @morphs = Morph.all
  end

  def show
    @morph = Morph.find(params[:id])
  end

  def new
    @morph = Morph.new
  end

  def create
    @morph = Morph.new(params[:morph])
    if @morph.save
      redirect_to session[:referer], :notice => "Successfully created morph."
    else
      render :action => 'new'
    end
  end

  def edit
    @morph = Morph.find(params[:id])
  end

  def update
    @morph = Morph.find(params[:id])
    if @morph.update_attributes(params[:morph])
      redirect_to session[:referer], :notice  => "Successfully updated morph."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @morph = Morph.find(params[:id])
    @morph.destroy
    redirect_to morphs_url, :notice => "Successfully destroyed morph."
  end
end
