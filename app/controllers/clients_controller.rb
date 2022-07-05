class ClientsController < ApplicationController

  def index 
    render json: Client.all
  end

  def show
    client = Client.find(params[:id])
    render json: client, serializer: ClientShowSerializer
  end

  def update
    client = Client.find(params[:id])
    client.update!(client_params)
    render json: client, status: :accepted
  end

  private

  def client_params
    params.permit(:name, :age)
  end

end
