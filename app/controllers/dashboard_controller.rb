class DashboardController < ApplicationController

  def show_stats
    # @vehicle_stats =  VehicleStatus.first()
    @vehicle_stats = {:tire_pressure => "60Pa", :battery_level => "70%", :lidar_status => "Ok"}
  end
end