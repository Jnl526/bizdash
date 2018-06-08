class ClientsController < ApplicationController
    before_action :set_client, only: [:show, :edit, :update, :destroy]
    
  def index
    @clients = Client.all
    @client = Client.all
 end
 
 def show
 end
 
 def new 
    @client = Client.new
end

def create
    @client = Client.create(client_params)

    if @client.save
        redirect_to root_path
    else
        render 'new'
    end
end

  
 def edit
 end

 def update
    if @client.update(client_params)
        redirect_to root_path
    else
        render 'edit'
    end
end

 

 def destroy
  @client.destroy
     redirect_to '/client'
 end

 
 
 private

def client_params
 params.require(:client).permit(:first_name, :last_name, :address, :city, :state, :zipcode, :email, :company, :phone, :project_id)
end

def set_client
    @client = Client.find(params[:id])
  end
end