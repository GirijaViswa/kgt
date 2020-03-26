class UserWorkController < ApplicationController

    def create
        user = User.all.find(params[:user_id])
        video = Video.all.find(params[:video_id])
        if user.user_works.find_by(video_id:video.id)
            render json: {status:"ok",msg:"This video already exists in your list.",user_work:user.user_works}
        else
            mywork = UserWork.new(user_id:user.id,video_id:video.id)
            if mywork.save
                render json: {status:"ok",msg:"Saved to your work list",user_work:mywork}
            else
                render json: {status:"error",msg:"Cannot add this to your list.Try later."}
            end
        end
    end

end
