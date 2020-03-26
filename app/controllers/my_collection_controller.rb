class MyCollectionController < ApplicationController

    def create
        user = User.all.find(params[:user_id])
        video = Video.all.find(params[:video_id])

        if user.my_collections.find_by(video_id:video.id)
                render json: {mycollection:user.my_collections,msg: "This video already exists in your collection.",status:"ok"}
        else
                mycollection = MyCollection.new(user_id:user.id,video_id:video.id)
                if mycollection.save
                    render json: {mycollection:mycollection,msg: "This video is added to your collection.",status:"ok"}
                else
                    render json: {"Error": "This video cannot be added to your collection.Please contact the support team.",status: "Error"}
                end
                
        end
    end

    def destroy
        # byebug
        collection = Video.all.find(params[:id])
        user = User.all.find(params[:user_id])
        user_collection = MyCollection.all.select{|item| item.user_id == user.id}

        new_user_collection = user_collection.select {|video| 
        if video.video_id == collection.id
            MyCollection.all.find(video.id).delete
        end
    }
    # user_collection = MyCollection.all.select{|item| item.user_id == user.id}
        # byebug        
        # render json: {new_user_collection: new_user_collection,old_user_collection:user_collection}
        render json: {status:"ok,deleted"}
    end

end
