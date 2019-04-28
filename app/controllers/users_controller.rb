class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    # @vehicle_stats =  VehicleStatus.first()
    @vehicle_stats = {:tire_pressure => "60Pa", :battery_level => "70%", :lidar_status => "Ok"}
    return @user,@vehicle_stats
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to checklist_path
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def show_stats
    # @vehicle_stats =  VehicleStatus.first()
    @vehicle_stats = {:tire_pressure => "60Pa", :battery_level => "70%", :lidar_status => "Ok"}
  end  


  private

    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :password,
                                   :password_confirmation)
    end
    
   
end