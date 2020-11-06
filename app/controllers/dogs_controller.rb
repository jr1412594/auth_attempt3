class DogsController < ApplicationController
    def index
        @dogs = Dog.all 
        render json: @dogs
    end

    def create
        @dog = Dog.create({
            name: params[:name],
            age: params[:age]
        })

        render json: {dog: @dog}, status: :created
    end
end
