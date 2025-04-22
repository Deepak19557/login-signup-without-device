# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
	products = [
	  { name: "dhaniya", price: 100, description: "Fresh and aromatic coriander powder used in Indian cooking." },
	  { name: "garam masala", price: 130, description: "A flavorful blend of ground spices for rich curries." },
	  { name: "haldi", price: 90, description: "High-quality turmeric powder for color and health benefits." },
	  { name: "hing", price: 150, description: "Asafoetida powder for adding unique depth to dishes." },
	  { name: "kalimirch", price: 140, description: "Black pepper that adds a strong, spicy flavor." },
	  { name: "kashmirilalmirch", price: 125, description: "Mild red chili powder for vibrant color and taste." }
	]

	products.each do |attrs|
	  product = Product.find_or_initialize_by(name: attrs[:name])
	  product.price = attrs[:price]
	  product.description = attrs[:description]
	  product.save!
	end


  product_1 = Product.find_by_name("dhaniya")
  product_1.product_image.attach(io: File.open(Rails.root.join("app/assets/images/dhaniya.jpeg")),filename: "dhaniya.jpeg",content_type: "image/jpeg")

 	product_2 = Product.find_by_name("garam masala")
  product_2.product_image.attach(io: File.open(Rails.root.join("app/assets/images/garammasalla.jpeg")),filename: "garammasalla.jpeg",content_type: "image/jpeg")

  product_3 = Product.find_by_name("haldi")
  product_3.product_image.attach(io: File.open(Rails.root.join("app/assets/images/haldi.jpeg")),filename: "haldi.jpeg",content_type: "image/jpeg")

  product_4 = Product.find_by_name("hing")
  product_4.product_image.attach(io: File.open(Rails.root.join("app/assets/images/hing.jpeg")),filename: "hing.jpeg",content_type: "image/jpeg")

  product_5 = Product.find_by_name("kalimirch")
  product_5.product_image.attach(io: File.open(Rails.root.join("app/assets/images/kalimirch.jpeg")),filename: "kalimirch.jpeg",content_type: "image/jpeg")

  product_6 = Product.find_by_name("kashmirilalmirch")
  product_6.product_image.attach(io: File.open(Rails.root.join("app/assets/images/kashmirilal.jpeg")),filename: "kashmirilal.jpeg",content_type: "image/jpeg")


