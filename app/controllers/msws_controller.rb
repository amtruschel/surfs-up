class MswsController < ApplicationController

  def search
    @surf_spot = Msw.where(spot_id: params[:surf_spot]).first
    @results = @surf_spot.get_surf(params[:surf_spot])[4]
    render action: 'show'
  end

end
