class ProductsController < ApplicationController
    def index #metodo 'index' para devolver un conjunto de cosas
        @products = Product.all  #al @ declara una variable, como variable de instancia, va a poder recibir en la vista
    end

    def show
        @product = Product.find(params[:id])
    end
end