class VideoController < ApplicationController
    def show
        product = Product.find_by(name:params[:name])
        videos = Video.all.select{|video| video.product_id === product.id}
        render json:{videos:videos}
    end
end
