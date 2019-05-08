class Api::PracticesController < ApplicationController

  def index 
    @practice = Practice.all 

    render 'index.json.jbuilder'
  end 

  def create 
    @practice = Practice.new(
                            name: params[:name],
                            location: params[:location], 
                            age: params[:age]
                            )
    @practice.save 

    render 'show.json.jbuilder'
  end 

  def show 
    @practice = Practice.find(params[:id])
    render 'show.json.jbuilder'
  end 

  def update 
    @practice = Practice.find(params[:id])

    @practice.name = params[:id] || @practice.name 
    @practice.location = params[:id] || @practice.location 
    @practice.age = params[:id] || @practice.age 
  end 

  def destroy 
    @practice = Practice.find(params[:id])
    @practice.destroy 
    render json: {message: 'deleted'}
  end 
end
