class UserController < ApplicationController
#Create a new user
    def create
        user = User.new(name:params[:name],email:params[:email],password:params[:password])
        if user.save
            my_token = issue_token(user)
            render json: {id: user.id, name: user.name, email:user.email, token: my_token}
        else
            render json: {error: 'The user could not be created'}, status: 401
        end
    end

#Authenticate the user
def check
    user = User.find_by(email:params[:email])
    if user && user.authenticate(params[:password])
        my_token = issue_token(user)
        render json: {id:user.id,name:user.name,email:user.email,token: my_token}
    else
        render json: {error: 'The user could not be found'}, status: 401
    end
end

#Show the user
def show
    user = User.find(params[:user_id])
    render json: {name:user.name,email:user.email}
end


#Show the user collection
def collections
    user = User.find(params[:user_id])
    user_collection = user.my_collections
    user_videos = user_collection.map{|item| Video.all.select{|video| video.id === item.video_id}}
    render json: {name:user.name,mycollection:user_collection,myvideos:user_videos}
end

end
