class ClientsController < ApplicationController
    before_action :find_client, only: [:show, :update]

    def show
    #    client = Client.find_by(id: params[:id])
    #    if client
    #     render json: client, status: :ok
    #    else
    #     render json: {error: "Client Not Found"}, status: 404
    #    end
        render json: @client, status: :ok
    end

    def update #patch "/clients/2"
        render json:  @client.update!(client_params), status: :ok
    #     client = Client.find_by(id: params[:id])
    #    if client
    #         if client.update(client_params)
    #           render json: client, status: :ok
    #         else
    #             render json: {error: client.errors}, status: 400
    #         end
    #    else
    #     render json: {error: "Client Not Found"}, status: 404
    #    end
    end

    private

    def find_client
        @client = Client.find(params[:id])
    end

    def client_params
        params.permit(:name, :age)
    end
end
