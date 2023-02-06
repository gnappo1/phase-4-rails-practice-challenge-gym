class MembershipsController < ApplicationController

  def create 
    m = Membership.create!(membership_params)
      render json: m.to_json, status: :created
  end

  private
    def membership_params 
        params.permit(:client_id, gym_id, :charge)
    end

end
