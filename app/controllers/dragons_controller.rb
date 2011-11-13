class DragonsController < ApplicationController
  def index
    @dragons = Dragon.all
  end

  def show
    @dragon = Dragon.find(params[:id])
  end

  def new
    @dragon = Dragon.new
  end

  def create
    @dragon = Dragon.new(params[:dragon])
    if @dragon.save
      redirect_to @dragon, :notice => "Successfully created dragon."
    else
      render :action => 'new'
    end
  end

  def edit
    @dragon = Dragon.find(params[:id])
  end

  def update
    @dragon = Dragon.find(params[:id])
    if @dragon.update_attributes(params[:dragon])
      redirect_to @dragon, :notice  => "Successfully updated dragon."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @dragon = Dragon.find(params[:id])
    @dragon.destroy
    redirect_to dragons_url, :notice => "Successfully destroyed dragon."
  end
end