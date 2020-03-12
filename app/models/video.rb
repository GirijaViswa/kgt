# has a collection of all recioe and gardening videos associated with the product
class Video < ApplicationRecord
    has_many :user_works
    has_and_belongs_to_many :my_collections
end
