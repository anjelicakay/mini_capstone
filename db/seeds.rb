# Image.create!([
#   {url: "https://asassyspoon.com/wp-content/uploads/2017/01/Guava-Mimosa-Donuts4-2.jpg", product_id: 1},
#   {url: "https://stansdonuts.com/wp-content/uploads/2018/07/Chocolate-Pocket-with-Nutella.jpg", product_id: 3},
#   {url: "http://www.sunnydonuts.com/img/vanilla_frosted.png", product_id: 5},
#   {url: "https://sweets.seriouseats.com/images/20120120-oldfashioned.jpg", product_id: 6},
#   {url: "http://www.lifeasastrawberry.com/wp-content/uploads/2016/06/baked-sprinkle-donuts-recipe.jpg", product_id: 2},
#   {url: "https://assets.epicurious.com/photos/54b0226d766062b20344580a/1:1/w_600%2Ch_600/51160200_glazed-doughnuts_1x1.jpg", product_id: 1},
#   {url: "http://www.lovethispic.com/uploaded_images/86778-Chocolate-Sprinkle-Donuts.jpg", product_id: 2},
#   {url: "https://i.pinimg.com/originals/17/75/d1/1775d1bb1f5bf32faa80855a6ef03c04.jpg", product_id: 5},
#   {url: "https://www.handletheheat.com/wp-content/uploads/2014/05/Sour-Cream-Doughnuts-04-Square.jpg", product_id: 6},
#   {url: "https://amp.businessinsider.com/images/520d01f66bb3f7e95c000024-750-563.jpg", product_id: 3}
# ])
# Order.create!([
#   {user_id: 1, product_id: 3, quantity: 1, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: 3, quantity: 1, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: 3, quantity: 1, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: 5, quantity: 2, subtotal: "4.0", tax: "0.36", total: "4.36"},
#   {user_id: 1, product_id: 5, quantity: 2, subtotal: "4.0", tax: "0.36", total: "4.36"},
#   {user_id: 1, product_id: 5, quantity: 2, subtotal: "4.0", tax: "0.36", total: "4.36"},
#   {user_id: 3, product_id: 1, quantity: 2, subtotal: "2.0", tax: "0.18", total: "2.18"},
#   {user_id: 3, product_id: 3, quantity: 1, subtotal: "3.0", tax: "0.27", total: "3.27"}
# ])
# Product.create!([
#   {name: "Glazed Donut", price: "1.0", description: "Donut glazed with sugar icing", in_stock: true, supplier_id: 1},
#   {name: "Chocolate Pocket with Nutella", price: "3.0", description: "Donut dipped in chocolate icing and filled with nutella", in_stock: true, supplier_id: 3},
#   {name: "Vanilla Sprinkled Glazed Donut", price: "2.0", description: "Glazed donut dipped in vanilla icing and topped with rainbow sprinkles", in_stock: true, supplier_id: 2},
#   {name: "Plain Old Fashioned", price: "3.0", description: "Cake donut glazed with sugar icing", in_stock: true, supplier_id: 2},
#   {name: "Chocolate Sprinkled Donut", price: "2.0", description: "Cake donut dipped in chocolate icing and topped with rainbow sprinkles", in_stock: true, supplier_id: 3}
# ])
# Supplier.create!([
#   {name: "Daisy's Sugar", email: "daisy@sugar.com", phone_number: "310-555-9922"},
#   {name: "Sprinkle Factory", email: "sprinkles@sprinklefactory.com", phone_number: "312-555-4445"},
#   {name: "Chocolate Craze", email: "chocolatecraze@chocolate.com", phone_number: "312-555-1212"}
# ])
# User.create!([
#   {name: "Bobby Flay", email: "bobby@gmail.com", password_digest: "$2a$10$eSU2sf3GtJIqsaRP8bjEPe/3sn2/f07GtZ64b5F3lJsyZwReibJeW", admin: false},
#   {name: "Charlie Brown", email: "charlie@gmail.com", password_digest: "$2a$10$CIQXR2rESGXDbaj3f9Dl1uCiqLtJvkVfjUAAoGTbZ5p8n0I2Ajgh2", admin: false},
#   {name: "Ina Garten", email: "ina@gmail.com", password_digest: "$2a$10$e1MNYfpaCKRk4Gm/B/64J.B9xD3EXmPrp1w8aysOeiPHDsyMSOThW", admin: true}
# ])

# Category.create([
#   {name: "Donut"},
#   {name: "Gluten Free"},
#   {name: "Pastry"}
# ])

# ProductCategory.create([
#   {product_id: 1, category_id: 1},
#   {product_id: 3, category_id: 1},
#   {product_id: 4, category_id: 1},
#   {product_id: 5, category_id: 1},
#   {product_id: 6, category_id: 1},
#   {product_id: 7, category_id: 1},
#   {product_id: 7, category_id: 2},
#   {product_id: 8, category_id: 3}
# ])


