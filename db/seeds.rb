Shop.destroy_all
Product.destroy_all
Order.destroy_all

shop = Shop.create({
  name: Faker::Company.name,
  address: Faker::Address.street_name,
  email: Faker::Name.first_name + "@mystore.com",
  owner: Faker::App.author,
  description: Faker::Commerce.product_name,
  postal_code: Faker::Address.postcode,
  country: Faker::Address.country,
  city: Faker::Address.city,
})

shop.products.create({
  name: Faker::Beer.name,
  description: Faker::Beer.style,
  price_cents: Faker::Commerce.price,
  shop_id: 1,
})

shop.products.create({
  name: Faker::Beer.name,
  description: Faker::Beer.style,
  price_cents: Faker::Commerce.price,
  shop_id: 1,
})

shop.orders.create({
  total_cents: 1300,
  shop_id: 1,
})

LineItem.create({
  order_id: 1,
  product_id: 1,
  quantity: 1,
})

LineItem.create({
  order_id: 1,
  product_id: 2,
  quantity: 1,
})
