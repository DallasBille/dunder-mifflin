class DogsController < ApplicationController

    before_action :get_dog, only: [:show]

    def index
        @dogs = Dog.all
    end

    def show
        @employees = @dog.employees
    end

    private
    def get_dog
        @dog = Dog.find(params[:id])
    end

    def dog_params
        params.require(:dog).permit(:breed, :name, :age)
    end
end
