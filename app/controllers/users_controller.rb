class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: :destroy
  
  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    @paginated_posts = @user.posts.order('created_at DESC').paginate(page: params[:page], :per_page => 6)
  end

  def new
    if logged_in?
      redirect_to root_path
    end
    @user = User.new
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Registration successful!"
      redirect_to edit_user_url(@user)
    else
      render 'new'
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(profile_params)
      flash[:success] = "Profile updated !"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Successful deleted user !"
    redirect_to users_path
  end


  private
    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
    end
    
    def profile_params
      params.require(:user).permit(:firstname, :lastname, :birthday, :gender, :tel, :skype, :facebook, :email, :password, :password_confirmation)
    end
    
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in to access this page"
        redirect_to login_path
      end
    end
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to root_path unless current_user?(@user)
    end
    
    def admin_user
      redirect_to root_path unless current_user.admin?
    end
end
