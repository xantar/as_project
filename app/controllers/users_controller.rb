class UsersController < ApplicationController
  before_filter :login_required, :except => [:new, :create]
  before_filter :access, :only => [:new, :create, :index]

  def index
    @users = User.find(:all)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to users_url, :notice => "User Created"
    else
      render :action => 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
    unless @user.id == current_user.id || current_user.id == 1
      if @user.manager || @user.id == 1
        redirect_to users_path, :alert => "You do not have permission"
      end
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to users_url, :notice => "Profile has been updated."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @name = @user.username
    @user.destroy
    redirect_to users_url, :notice => "#{@name} successfully destroyed" 
  end
end
