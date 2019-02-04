class ApplicationController < ActionController::Base
  before_action :authenticate_user!, if: :devise_controller?
  before_action :get_surf_spots

  attr_reader :surf_spots

  def get_surf_spots
    @surf_spots = []
    Msw.all.each do |spot|
      @surf_spots << [spot.spot_name, spot.spot_id]
    end
  end
end
