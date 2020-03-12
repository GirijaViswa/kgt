#Keeps track of user posts -> eg. user pics captured after trying out the recipe
class WorkPost < ApplicationRecord
    belongs_to :user_work
end
