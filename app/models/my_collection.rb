#User's collection where the user can add/remove videos to his collection
class MyCollection < ApplicationRecord 
    has_and_belongs_to_many :videos
    belongs_to :user
end
