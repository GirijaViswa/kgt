class ProductController < ApplicationController
    def index
        fruits = Product.all.select{|item| item.category === 'fruit'}
        vegetables = Product.all.select{|item| item.category === 'vegetable'}
        render json: {fruits:fruits,vegetables:vegetables}
    end
end
