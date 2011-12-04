class DragonsController < ApplicationController
  before_filter :login_required

  def index
    @dragons = Dragon.find(:all, :joins => :status, :conditions => { :statuses => { :tracked => true } })

    respond_to do |format|
      format.html
      format.xml  
    end
  end

  def show
    @dragon = Dragon.find(params[:id])

    respond_to do |format|
      format.html
      format.xml  
    end
  end

  def lhistory
    @dragon = Dragon.find(params[:id])
  end

  def whistory
    @dragon = Dragon.find(params[:id])
  end

  def all
    @dragons = Dragon.all
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
    unless @dragon.user_id == current_user.id || current_user.manager || current_user==1
      redirect_to dragons_path, :alert => "You do not have permission to edit #{@dragon.number}"
    end
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
    if @dragon.user_id == current_user.id || current_user.manager || current_user==1
      @number = @dragon.number
      @dragon.destroy
      redirect_to dragons_url, :notice => "Successfully destroyed dragon: #{@number}."
    else
      redirect_to dragons_path, :alert => "You do not have permission to delete #{@dragon.number}"
    end
  end
end
