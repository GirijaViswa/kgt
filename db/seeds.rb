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

p3 = Product.create(category:"fruit",tfvname:"pineapple",name:"Pineapple",img:"https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/323/323783/fresh-pineapple-sliced-on-chopping-board.jpg?w=1155&h=1961")


v1 = Video.create(url:"https://www.youtube.com/watch?v=WDb85KkMl7E",video_type:"Recipe",name:"Tasty Grilled Pineapple With Spiced Caramel",product_id:p3.id)
v2 = Video.create(url:"https://www.youtube.com/watch?v=7HAKXeFZuyQ",video_type:"Recipe",name:"Pineapple Salsa Recipe",product_id:p3.id)
v3 = Video.create(url:"https://www.youtube.com/watch?v=c-BPqUMbM60`",video_type:"Recipe",name:"Pineapple cake",product_id:p3.id)
v4 = Video.create(url:"https://www.youtube.com/watch?v=OpvPGQI1xj8",video_type:"Garden",name:"The Joy Of Growing Pineapples",product_id:p3.id)
v5 = Video.create(url:"https://www.youtube.com/watch?v=MHFvC5Rm5Pw",video_type:"Garden",name:"How to Grow Pineapples at Home Fast n Easy",product_id:p3.id)
v6 = Video.create(url:"https://www.youtube.com/watch?v=pZS7fSWnHsI",video_type:"Garden",name:"How Long Does It Take To Grow A Pineapple?",product_id:p3.id)

mc1 = MyCollection.create(user_id:user1.id,video_id:v1.id)
mc2 = MyCollection.create(user_id:user1.id,video_id:v2.id)

uw1 = UserWork.create(user_id:user1.id,video_id:v1.id)

WorkPost.create(information:"Tastes awesome",image:"https://www.archanaskitchen.com/images/archanaskitchen/Indian_Sweets_Mithai/Carrot_Badam_Kheer_Recipe_Carrot_Almond_Milk_Pudding-1.jpg",user_work_id:uw1.id)


a1 = Product.create(category:"fruit",tfvname:"Avocado",name:"Avocado",img:"https://36iusc2tb88y2g492si2bqd1-wpengine.netdna-ssl.com/wp-content/uploads/2019/07/avocados.jpg")
a2 = Product.create(category:"fruit",tfvname:"Custard%20Apple",name:"Custard Apple",img:"https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/cherimoya-1296x728-feature.jpg?w=1155&h=1528")
a3 = Product.create(category:"fruit",tfvname:"Amla",name:"Amla",img:"https://www.gaiagoodhealth.com/blog/wp-content/uploads/2019/05/Amla-Benefit.png")
a4 = Product.create(category:"fruit",tfvname:"Tropical%20Almond",name:"Almonds",img:"https://gfb.global.ssl.fastly.net/wp-content/uploads/2016/09/17-awesome-benefits-of-the-tropical-almond.jpg")
a5 = Product.create(category:"fruit",tfvname:"Java%20Apple",name:"Java Apple",img:"https://im01.itaiwantrade.com/78105c01-d169-4cda-b6f7-05f0ac01e24f/2c4bcf7e-7857-430c-bcf6-7b0c835c7379_WaxApple1s-360x360.gif")