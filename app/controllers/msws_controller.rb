class MswsController < ApplicationController

  def search
    surf_spot = Msw.where(spot_id: params[:surf_spot]).first
    @results = surf_spot.get_surf(params[:surf_spot])
    render action: 'show'
  end

end
