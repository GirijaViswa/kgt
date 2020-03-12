# This holds the category type (either fruit or vegetable) and its name(tfvname sent to api)
class Product < ApplicationRecord
    has_many :videos
end
