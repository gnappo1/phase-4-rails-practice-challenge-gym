class GymsController < ApplicationController
    before_action :find_gym, only: [:show, :update, :destroy]

    def show
        render json: @gym, status: :ok
    end

    def destroy
        @gym.destroy
        head :no_content
    end

    private

    def find_gym
        @gym = Gym.find(params[:id])
    end
end
