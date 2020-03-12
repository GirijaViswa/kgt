#this holds the record of the user works (user trials includes the video id which he followed)
class UserWork < ApplicationRecord
    has_many :work_posts
    belongs_to :user
    belongs_to :video
end
