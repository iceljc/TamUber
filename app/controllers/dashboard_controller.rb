class DashboardController < ApplicationController

  def show_stats
    # @vehicle_stats =  VehicleStatus.first()
    @vehicle_stats = {"tire_pressure" => 111, "battery_level" => 222, "lidar_status" => 123}
  end
end