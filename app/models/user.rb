#Primary user of the website
class User < ApplicationRecord
    has_secure_password
    has_many :my_collections
    has_many :user_works
    has_many :videos, through: :my_collections
    has_many :work_posts, through: :user_works
end
