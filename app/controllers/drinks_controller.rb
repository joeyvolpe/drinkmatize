class DrinksController < ApplicationController

    def index
        @drinks = Drink.all
    end

    def show
        @drink = Drink.find(params[:id])
    end

    def new
        @drink = Drink.new
    end

    def create
        @drink = Drink.new(drink_params)
        @drink.user = current_user

        if @drink.save
            redirect_to @drink
        else
            render :new
        end
    end

    def edit
        @drink = Drink.find(params[:id])
    end

    def update
        @drink = Drink.find(params[:id])

        if @drink.update_attributes(drink_params)
            redirect_to drink_path
        else
            render :edit
        end
    end

    def destroy
        @drink = Drink.find(params[:id])
        @drink.destroy
        redirect_to user_path(@drink.user)
    end


    private
    def drink_params
        params.require(:drink).permit(:name, :recipe, :glassware, :price, :season, :spirit_ids => [])
    end








end
