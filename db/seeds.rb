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

user1 = User.create(name:"abc",email:"abc@gmail.com",password:"abc")
user2 = User.create(name:"aaa",email:"aaa@gmail.com",password:"aaa")

p3 = Product.create(category:"fruit",tfvname:"Pineapple",name:"Pineapple",img:"https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/323/323783/fresh-pineapple-sliced-on-chopping-board.jpg?w=1155&h=1961")


v1 = Video.create(url:"https://www.youtube.com/embed/WDb85KkMl7E",video_type:"Recipe",name:"Tasty Grilled Pineapple With Spiced Caramel",product_id:p3.id)
v2 = Video.create(url:"https://www.youtube.com/embed/7HAKXeFZuyQ",video_type:"Recipe",name:"Pineapple Salsa Recipe",product_id:p3.id)
v3 = Video.create(url:"https://www.youtube.com/embed/c-BPqUMbM60",video_type:"Recipe",name:"Pineapple cake",product_id:p3.id)
v4 = Video.create(url:"https://www.youtube.com/embed/OpvPGQI1xj8",video_type:"Garden",name:"The Joy Of Growing Pineapples",product_id:p3.id)
v5 = Video.create(url:"https://www.youtube.com/embed/MHFvC5Rm5Pw",video_type:"Garden",name:"How to Grow Pineapples at Home Fast n Easy",product_id:p3.id)
v6 = Video.create(url:"https://www.youtube.com/embed/pZS7fSWnHsI",video_type:"Garden",name:"How Long Does It Take To Grow A Pineapple?",product_id:p3.id)

mc1 = MyCollection.create(user_id:user1.id,video_id:v1.id)
mc2 = MyCollection.create(user_id:user1.id,video_id:v2.id)

uw1 = UserWork.create(user_id:user1.id,video_id:v1.id)

WorkPost.create(information:"Tastes awesome",image:"https://www.archanaskitchen.com/images/archanaskitchen/Indian_Sweets_Mithai/Carrot_Badam_Kheer_Recipe_Carrot_Almond_Milk_Pudding-1.jpg",user_work_id:uw1.id)

#Fruits
a1 = Product.create(category:"fruit",tfvname:"Avocado",name:"Avocado",img:"https://36iusc2tb88y2g492si2bqd1-wpengine.netdna-ssl.com/wp-content/uploads/2019/07/avocados.jpg")
a2 = Product.create(category:"fruit",tfvname:"Custard%20Apple",name:"Custard Apple",img:"https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/cherimoya-1296x728-feature.jpg?w=1155&h=1528")
a3 = Product.create(category:"fruit",tfvname:"Amla",name:"Amla",img:"https://www.gaiagoodhealth.com/blog/wp-content/uploads/2019/05/Amla-Benefit.png")
a4 = Product.create(category:"fruit",tfvname:"Tropical%20Almond",name:"Almonds",img:"https://gfb.global.ssl.fastly.net/wp-content/uploads/2016/09/17-awesome-benefits-of-the-tropical-almond.jpg")
a5 = Product.create(category:"fruit",tfvname:"Java%20Apple",name:"Java Apple",img:"https://im01.itaiwantrade.com/78105c01-d169-4cda-b6f7-05f0ac01e24f/2c4bcf7e-7857-430c-bcf6-7b0c835c7379_WaxApple1s-360x360.gif")
a6 = Product.create(category:"fruit",tfvname:"Banana",name:"Banana",img:"https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/325879_2200-800x1200.jpg")
a7 = Product.create(category:"fruit",tfvname:"Breadfruit",name:"Breadfruit",img:"https://cdn-a.william-reed.com/var/wrbm_gb_food_pharma/storage/images/publications/food-beverage-nutrition/foodnavigator-latam.com/news/suppliers/xagro-expands-plantation-operations-to-include-breadfruit-in-nicaragua/10411909-1-eng-GB/Xagro-expands-plantation-operations-to-include-breadfruit-in-Nicaragua.jpg")

Video.create(url:"https://www.youtube.com/embed/tHVzFLtvbGQ",video_type:"Recipe",name:"Fresh Homemade Guacamole",product_id:a1.id)
Video.create(url:"https://www.youtube.com/embed/WDRujOJVykE",video_type:"Recipe",name:"How to Make Avocado Toast 10 WAYS!",product_id:a1.id)
Video.create(url:"https://www.youtube.com/embed/ARJ4e_eurlw",video_type:"Recipe",name:"Avocado Flat Bread Recipe (Vegan)",product_id:a1.id)
Video.create(url:"https://www.youtube.com/embed/CTR1oZimeAM",video_type:"Garden",name:"HOW TO GROW AVOCADO TREE FROM SEED",product_id:a1.id)
Video.create(url:"https://www.youtube.com/embed/xjjH_RA69eE",video_type:"Garden",name:"How To Grow An Avocado Tree From Seed - EASY AND FAST!",product_id:a1.id)
Video.create(url:"https://www.youtube.com/embed/TDd_QU9Crmk",video_type:"Garden",name:"How to: Grow Avocado from Seed",product_id:a1.id)

Video.create(url:"https://www.youtube.com/embed/usz5paqh_yY",video_type:"Recipe",name:"SEETHAPHAL RABIDI",product_id:a2.id)
Video.create(url:"https://www.youtube.com/embed/wmWFFLnXX2I",video_type:"Recipe",name:"Sitaphal Ice Cream",product_id:a2.id)
Video.create(url:"https://www.youtube.com/embed/-chSA6Nvqko",video_type:"Recipe",name:"Sitaphal Basoondi",product_id:a2.id)
Video.create(url:"https://www.youtube.com/embed/3uWnGcrxP_g",video_type:"Garden",name:"How to grow Sugar Apple in Pot",product_id:a2.id)
Video.create(url:"https://www.youtube.com/embed/BJC2Q_HSqWw",video_type:"Garden",name:"Harvest My Organic Custard apple and Regrow From Seeds",product_id:a2.id)
Video.create(url:"https://www.youtube.com/embed/DZb243MEgn8",video_type:"Garden",name:"Fastest way to germinate sugar apple fruit seeds",product_id:a2.id)

Video.create(url:"https://www.youtube.com/embed/Bo7JTbQpLwo",video_type:"Recipe",name:"Amla Candy Recipe",product_id:a3.id)
Video.create(url:"https://www.youtube.com/embed/l51Dg8Q38JA",video_type:"Recipe",name:"Amla Murabba with Jaggery",product_id:a3.id)
Video.create(url:"https://www.youtube.com/embed/3KI0pnhUXoo",video_type:"Recipe",name:"Amla Fat Cutter Drink",product_id:a3.id)
Video.create(url:"https://www.youtube.com/embed/aDSA1x_0Ef4",video_type:"Garden",name:"how to grow and care amla, grow Amla cutting, gooseberry plants",product_id:a3.id)
Video.create(url:"https://www.youtube.com/embed/lZ7p-YLS0po",video_type:"Garden",name:"Growing Gooseberries from Planting to Harvest",product_id:a3.id)
Video.create(url:"https://www.youtube.com/embed/X0PJi8bXUT8",video_type:"Garden",name:"amla plantation",product_id:a3.id)

Video.create(url:"https://www.youtube.com/embed/Xr3vcPUcjs4",video_type:"Recipe",name:"How To Make Homemade Almond Butter",product_id:a4.id)
Video.create(url:"https://www.youtube.com/embed/TQtRv-wdaJU",video_type:"Recipe",name:"How-To Make Almond Milk",product_id:a4.id)
Video.create(url:"https://www.youtube.com/embed/WH21B6H-haM",video_type:"Recipe",name:"healthy almond joy breakfast cookie recipe",product_id:a4.id)
Video.create(url:"https://www.youtube.com/embed/pm3M7U2NCQQ",video_type:"Garden",name:"Growing California video series: Almond Futures",product_id:a4.id)
Video.create(url:"https://www.youtube.com/embed/j8WsGISimjM",video_type:"Garden",name:"GROW ALMOND TREE FROM ALMOND",product_id:a4.id)
Video.create(url:"https://www.youtube.com/embed/cb1FwzkXka0",video_type:"Garden",name:"How to grow an almond tree from seed !",product_id:a4.id)

Video.create(url:"https://www.youtube.com/embed/KiCYZ2DA240",video_type:"Recipe",name:"Rose Apple icecream Recipe",product_id:a5.id)
Video.create(url:"https://www.youtube.com/embed/Wlg1u27PS_0",video_type:"Recipe",name:"Water Apple or Java Apple or Jamrul Juice Recipe",product_id:a5.id)
Video.create(url:"https://www.youtube.com/embed/76vjRsmlauk",video_type:"Recipe",name:"Rose Apple Fruit Juice",product_id:a5.id)
Video.create(url:"https://www.youtube.com/embed/u8iV8nXhhRg",video_type:"Garden",name:"How to Plant Honey Rose Apple (Syzygium) In Pots To Fruiting Heavily",product_id:a5.id)
Video.create(url:"https://www.youtube.com/embed/wsd8Lb0VdWg",video_type:"Garden",name:"How to grow water apple tree in a container?",product_id:a5.id)
Video.create(url:"https://www.youtube.com/embed/yYfFdEHCA-I",video_type:"Garden",name:"Easiest Method of Propagation of Jamrul or Java Apple at Home.",product_id:a5.id)

Video.create(url:"https://www.youtube.com/embed/3ZG1-o2aqeU",video_type:"Recipe",name:"Perfectly moist BANANA BREAD",product_id:a6.id)
Video.create(url:"https://www.youtube.com/embed/sVRjZ5cwOWQ",video_type:"Recipe",name:"Microwave Banana Cake",product_id:a6.id)
Video.create(url:"https://www.youtube.com/embed/VprnA8S3oTM",video_type:"Recipe",name:"How to Make banana smoothie Recipe",product_id:a6.id)
Video.create(url:"https://www.youtube.com/embed/1B4fMbJic6U",video_type:"Garden",name:"how to grow a banana tree from seed",product_id:a6.id)
Video.create(url:"https://www.youtube.com/embed/-UjhlNoTLIE",video_type:"Garden",name:"5 Tips How to Grow a Ton of Bananas in the Backyard",product_id:a6.id)
Video.create(url:"https://www.youtube.com/embed/1WlIIvIZt4Y",video_type:"Garden",name:"Three Year Bananas - Growing dwarf banana trees in your garden",product_id:a6.id)

Video.create(url:"https://www.youtube.com/embed/h1oli_luhZA",video_type:"Recipe",name:"How To Oven Roast a Breadfruit for Breakfast",product_id:a7.id)
Video.create(url:"https://www.youtube.com/embed/aSP9dw2lE5A",video_type:"Recipe",name:"Kadachakka curry",product_id:a7.id)
Video.create(url:"https://www.youtube.com/embed/VprnA8S3oTM",video_type:"Recipe",name:"How to Make banana smoothie Recipe",product_id:a7.id)
Video.create(url:"https://www.youtube.com/embed/1B4fMbJic6U",video_type:"Garden",name:"how to grow a banana tree from seed",product_id:a7.id)
Video.create(url:"https://www.youtube.com/embed/-UjhlNoTLIE",video_type:"Garden",name:"5 Tips How to Grow a Ton of Bananas in the Backyard",product_id:a7.id)
Video.create(url:"https://www.youtube.com/embed/1WlIIvIZt4Y",video_type:"Garden",name:"Three Year Bananas - Growing dwarf banana trees in your garden",product_id:a7.id)

#Vegetables List
veg1 = Product.create(category:"vegetable",tfvname:"Guar",name:"Cluster bean",img:"https://www.solvay.com/sites/g/files/srpend221/files/styles/header/https/media.solvay.com/medias/domain1446/media899/137731-qm0x0nj23i.jpg?itok=H8ctzD0v")
veg2 = Product.create(category:"vegetable",tfvname:"Tamarillo",name:"Tamarillo",img:"https://cdn3.volusion.com/hreny.ypnsh/v/vspfiles/photos/TAMARILLO6-2.jpg?v-cache=1508263185")
veg3 = Product.create(category:"vegetable",tfvname:"Chili%20Pepper",name:"Chili Pepper",img:"https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/315/315262/two-red-chili-peppers.jpg?w=1155&h=978")
veg4 = Product.create(category:"vegetable",tfvname:"Mooli",name:"Daikon",img:"https://rukminim1.flixcart.com/image/832/832/jkvh0nk0/plant-seed/n/z/d/750-radish-mooli-vegetables-seed-pack-of-150-seed-x-5-per-pkts-5-original-imaf84kszdnu7q6z.jpeg?q=70")
veg5 = Product.create(category:"vegetable",tfvname:"Aubergine",name:"Eggplant",img:"https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/279/279359/two-eggplants-on-a-wooden-table.jpg?w=1155&h=1444")
veg6 = Product.create(category:"vegetable",tfvname:"Fennel",name:"Fennel",img:"https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/fennel-and-fennel-seeds-benefits-1296x728-feature.jpg?w=1155&h=1528")
veg7 = Product.create(category:"vegetable",tfvname:"Ginger",name:"Ginger Root",img:"https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/766/ginger-main-1515515765.jpg")
veg8 = Product.create(category:"vegetable",tfvname:"Moringa",name:"Horseradish",img:"https://www.thespruceeats.com/thmb/RfRsah3Ku3S7Unou6gnRrq_bWOs=/2223x1667/smart/filters:no_upscale()/horseradish-2500-56a210f55f9b58b7d0c63350.jpg")
veg9 = Product.create(category:"vegetable",tfvname:"Okra",name:"Okra",img:"https://www.bakhabarkissan.com/wp-content/uploads/2019/03/3212019C.jpg")
veg10 = Product.create(category:"vegetable",tfvname:"Dudhi",name:"White Pumpkin",img:"https://www.waangoo.com/content/images/thumbs/0023475_indian-bottle-gourd-dudhi_600.jpeg")
veg11 = Product.create(category:"vegetable",tfvname:"Mogri",name:"Radish pods",img:"https://images.indianexpress.com/2020/01/mogri_1200.jpg")
veg12 = Product.create(category:"vegetable",tfvname:"Gisuri",name:"Squash",img:"https://www.seriouseats.com/images/20110408-seriously-asian-luffa.jpg")

#Dal
d1 = Product.create(category:"dal",tfvname:"Chickpea",name:"Bengal gram",img:"https://nationalpostcom.files.wordpress.com/2019/12/gettyimages-1124401100.jpg")


Video.create(url:"https://www.youtube.com/embed/wfOYwfMjQjg",video_type:"Recipe",name:"Gawar ki sabzi recipe",product_id:veg1.id)
Video.create(url:"https://www.youtube.com/embed/1DRMzEe5QOo",video_type:"Recipe",name:"Gavar Boplachi Bhaaji",product_id:veg1.id)
Video.create(url:"https://www.youtube.com/embed/COznRgNQqjM",video_type:"Recipe",name:"CHILLI GARLIC CLUSTER BEANS",product_id:veg1.id)
Video.create(url:"https://www.youtube.com/embed/_rhOjMMYrGs",video_type:"Garden",name:"How to grow Cluster Bean from Seeds with result",product_id:veg1.id)
Video.create(url:"https://www.youtube.com/embed/F4d5qbyyPFU",video_type:"Garden",name:"Grow Huge Number of Beans in Containers Most Easily",product_id:veg1.id)
Video.create(url:"https://www.youtube.com/embed/KHiG1FXg16I",video_type:"Garden",name:"1#Cluster Beans /How To Grow",product_id:veg1.id)

Video.create(url:"https://www.youtube.com/embed/iLHXXz12Zr4",video_type:"Recipe",name:"Tamarillo Salsa Recipe",product_id:veg2.id)
Video.create(url:"https://www.youtube.com/embed/BGemKZES2eI",video_type:"Recipe",name:"Tamarillo Homemade Hummus Recipe",product_id:veg2.id)
Video.create(url:"https://www.youtube.com/embed/-etUQq34Bf0",video_type:"Garden",name:"How to Grow a Tamarillo Tree in a Pot",product_id:veg2.id)
Video.create(url:"https://www.youtube.com/embed/UA1mj6hUw0c",video_type:"Garden",name:"Tree Tomato aka Tamarillo",product_id:veg2.id)

Video.create(url:"https://www.youtube.com/embed/Gte7B2zP7WA",video_type:"Recipe",name:"How to Pickle Chilli Peppers. Easy and Tasty!",product_id:veg3.id)
Video.create(url:"https://www.youtube.com/embed/Ja1I23i7oHA",video_type:"Recipe",name:"CHILI GARLIC SAUCE",product_id:veg3.id)
Video.create(url:"https://www.youtube.com/embed/InMoKYWbhgk",video_type:"Garden",name:"How to Grow Peppers",product_id:veg3.id)
Video.create(url:"https://www.youtube.com/embed/UA1mj6hUw0c",video_type:"Garden",name:"How to: Grow Chili Peppers from Seed",product_id:veg3.id)

Video.create(url:"https://www.youtube.com/embed/SGW_svHzzeE",video_type:"Recipe",name:"Mooli Ka Paratha",product_id:veg4.id)
Video.create(url:"https://www.youtube.com/embed/csqAh-K87pM",video_type:"Recipe",name:"Mooli Ki Sabzi",product_id:veg4.id)
Video.create(url:"https://www.youtube.com/embed/k35KnxFXeR4",video_type:"Garden",name:"How to Grow Mooli or Radish in Winters",product_id:veg4.id)
Video.create(url:"https://www.youtube.com/embed/4d3Tx054-U8",video_type:"Garden",name:"how to grow RADISH(MULI) in pot easily",product_id:veg4.id)

Video.create(url:"https://www.youtube.com/embed/3X5pJ6R1AZY",video_type:"Recipe",name:"Eggplant Dinners 4 Ways",product_id:veg5.id)
Video.create(url:"https://www.youtube.com/embed/5dxoqb_r1Nc",video_type:"Recipe",name:"Cooking Eggplant in Olive Oil in the Skillet : Healthy & Delicious Food",product_id:veg5.id)
Video.create(url:"https://www.youtube.com/embed/gonisqP67DE",video_type:"Garden",name:"How to: Grow Eggplant aka Aubergine from Seed in Containers",product_id:veg5.id)
Video.create(url:"https://www.youtube.com/embed/adKVZ430PwE",video_type:"Garden",name:"How to Grow Eggplant",product_id:veg5.id)

Video.create(url:"https://www.youtube.com/embed/xn9rFJWekmQ",video_type:"Recipe",name:"Vegan Potato Fennel Soup with Ginger & Garlic Recipe",product_id:veg6.id)
Video.create(url:"https://www.youtube.com/embed/Z8LomUGglR8",video_type:"Recipe",name:"Fennel pepper chicken",product_id:veg6.id)
Video.create(url:"https://www.youtube.com/embed/eNlwchjFTG8",video_type:"Garden",name:"how to grow fennel from seed, fennel seed germination tips, fennel seedlings updates",product_id:veg6.id)
Video.create(url:"https://www.youtube.com/embed/EU-q6M1bQNo",video_type:"Garden",name:"How To Grow Fennel",product_id:veg6.id)

Video.create(url:"https://www.youtube.com/embed/6eiCwnVYp3A",video_type:"Recipe",name:"ginger tea recipe",product_id:veg7.id)
Video.create(url:"https://www.youtube.com/embed/87yldnQejcc",video_type:"Recipe",name:"How to: Making ginger shot with a blender",product_id:veg7.id)
Video.create(url:"https://www.youtube.com/embed/TIN-zInZcrs",video_type:"Garden",name:"Planting Store Bought Ginger",product_id:veg7.id)
Video.create(url:"https://www.youtube.com/embed/2lQV53fD0SU",video_type:"Garden",name:"How to Grow Ginger!",product_id:veg7.id)

Video.create(url:"https://www.youtube.com/embed/C2r-Rs7oyQY",video_type:"Recipe",name:"Horseradish Sauce Recipe",product_id:veg8.id)
Video.create(url:"https://www.youtube.com/embed/ZrAwwf6L-fM",video_type:"Recipe",name:"Whipped Potatoes with Horseradish Recipe",product_id:veg8.id)
Video.create(url:"https://www.youtube.com/embed/vKWTOZwhpaE",video_type:"Garden",name:"Horseradish how to grow",product_id:veg8.id)
Video.create(url:"https://www.youtube.com/embed/E1jJVJS0imU",video_type:"Garden",name:"Horseradish",product_id:veg8.id)

Video.create(url:"https://www.youtube.com/embed/gW3cbtRfI1k",video_type:"Recipe",name:"Okra with Oyster Sauce",product_id:veg9.id)
Video.create(url:"https://www.youtube.com/embed/UcEwOxVOOKU",video_type:"Recipe",name:"Bhindi Masala",product_id:veg9.id)
Video.create(url:"https://www.youtube.com/embed/nfOetXfpy7w",video_type:"Garden",name:"How to Grow Okra from seeds to harvest",product_id:veg9.id)
Video.create(url:"https://www.youtube.com/embed/giy6BE7Sc_Q",video_type:"Garden",name:"GROW MORE OKRA WITH THESE EASY TIPS!",product_id:veg9.id)

Video.create(url:"https://www.youtube.com/embed/9qCJIE2tFLA",video_type:"Recipe",name:"White Pumpkin Stirfry",product_id:veg10.id)
Video.create(url:"https://www.youtube.com/embed/OqtTmK71Dh8",video_type:"Recipe",name:"Pumpkin and Dill Seed Soup",product_id:veg10.id)
Video.create(url:"https://www.youtube.com/embed/QT1NvzwTtlA",video_type:"Garden",name:"White Pumpkin Seeds",product_id:veg10.id)
Video.create(url:"https://www.youtube.com/embed/w-cAg4t0eq4",video_type:"Garden",name:"How To Grow Winter Melon",product_id:veg10.id)

Video.create(url:"https://www.youtube.com/embed/TYdpvuTOofU",video_type:"Recipe",name:"Beans Paruppu Usili",product_id:veg11.id)
Video.create(url:"https://www.youtube.com/embed/7gKYZSIyegY",video_type:"Recipe",name:"Aloo Moongre ki Subzi",product_id:veg11.id)
Video.create(url:"https://www.youtube.com/embed/UFLuuthprXk",video_type:"Garden",name:"MY RADISHES WENT TO SEED",product_id:veg11.id)
Video.create(url:"https://www.youtube.com/embed/MSWz_hX2Uok",video_type:"Garden",name:"Radish pods",product_id:veg11.id)

Video.create(url:"https://www.youtube.com/embed/NLtdPpS_PL4",video_type:"Recipe",name:"Healthy Soup Recipe",product_id:veg12.id)
Video.create(url:"https://www.youtube.com/embed/XAyMN3xY7bM",video_type:"Recipe",name:"Bottle Gourd and Split Green Moong Dal Curry ",product_id:veg12.id)
Video.create(url:"https://www.youtube.com/embed/jDf7gvkGn-g",video_type:"Garden",name:"How To Grow Squash",product_id:veg12.id)
Video.create(url:"https://www.youtube.com/embed/4CgBmj89D8M",video_type:"Garden",name:"How to Grow Squash in Containers",product_id:veg12.id)