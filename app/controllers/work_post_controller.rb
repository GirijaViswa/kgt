class WorkPostController < ApplicationController

    def create
        # byebug
        user = User.find(params[:user_id])
        user_work = user.user_works
        selected_work = user_work.select{|work| work.video_id === params[:video_id]}
        user_post = WorkPost.new(information:params[:information],image:params[:image],user_work_id:selected_work[0].id)
        if user_post.save
            render json: {msg:'Post created Successfully',status:"ok",post:user_post}
        else
            render json: {msg:"Unable to create the post. Try again later!"}
        end
    end
end
