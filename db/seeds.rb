# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MyCollection.destroy_all
UserWork.destroy_all
WorkPost.destroy_all
Video.destroy_all
Product.destroy_all
User.destroy_all

user1 = User.create(email:"abc@gmail.com",password_digest:"abc")
user2 = User.create(email:"aaa@gmail.com",password_digest:"aaa")

p1 = Product.create(category:"fruit",name:"apple")
p2 = Product.create(category:"fruit",name:"pineapple")
p3 = Product.create(category:"vegetable",name:"carrot")

v1 = Video.create(url:"https://www.youtube.com/watch?v=XeIwCfGfMP4",video_type:"Recipe",product_id:p3.id)
v2 = Video.create(url:"https://www.youtube.com/watch?v=4coBVpdCIMQ",video_type:"Recipe",product_id:p3.id)
v3 = Video.create(url:"https://www.youtube.com/watch?v=zoyhs-EiJxE",video_type:"Recipe",product_id:p3.id)
v4 = Video.create(url:"https://www.youtube.com/watch?v=mcW9bQd8YuY",video_type:"Garden",product_id:p3.id)
v5 = Video.create(url:"https://www.youtube.com/watch?v=YWKSjQ38nmQ",video_type:"Garden",product_id:p3.id)
v6 = Video.create(url:"https://www.youtube.com/watch?v=d3doZFKbTB4",video_type:"Garden",product_id:p3.id)

mc1 = MyCollection.create(user_id:user1.id,video_id:v1.id)
mc2 = MyCollection.create(user_id:user1.id,video_id:v2.id)

uw1 = UserWork.create(user_id:user1.id,video_id:v1.id)

WorkPost.create(information:"Tastes awesome",image:"https://www.archanaskitchen.com/images/archanaskitchen/Indian_Sweets_Mithai/Carrot_Badam_Kheer_Recipe_Carrot_Almond_Milk_Pudding-1.jpg",user_work_id:uw1.id)