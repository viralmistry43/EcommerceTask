[
  ['Nike', '+919876543211', 'contact@nike.com', 'Mumbai, India'],
  ['Madhur', '+919876543212', 'contact@madhur.com', 'Gujarat, India'],
  ['Aashirvaad', '+919876543213', 'contact@aashirvaad.com', 'Mumbai, India']
].each do |brand|
  Brand.create(name: brand[0], phone: brand[1], email: brand[2], address: brand[3])
end

puts 'Brand Created'

[
  [1, 'Printed Men Round Neck Black T-Shirt', 'Round Neck, Short Sleeve and Regular fit', 'Type: Round Neck, Sleeve: Short Sleeve, Fit: Regular, Fabric: Pure Cotton, Pack of:  1, Style Code: AR5005-010, Neck Type: Round Neck, Ideal For: Men, Pattern: Printed, Fabric Care: Gentle Machine Wash', 1050, 100],
  [1, 'Nike Air Zoom Pegasus 38', 'Something Old, Something New, Spring With Your Step and Secure Fit', "The road is your runway.Get ready to take flight in the workhorse with wings.Back with extra bounce that's perfect for hitting the tarmac.Whether you're racking up everyday miles or on your long run, feel the spring in your step with the same cushioned support as its predecessor.Breathable mesh in the upper combines the comfort and durability you want with a wider fit at the toes.", 10000, 100],
  [2, 'MADHUR Pure and Hygienic Sugar', 'Pure and Hygienic', 'Form Factor: Crystal, Container Type: Pouch, Maximum Shelf Life: 24 Months', 100, 100],
  [3, 'AASHIRVAAD Superior MP Atta', 'Whole-Wheat Flour', 'Maximum Shelf Life: 3 Months, Is Perishable: No, Organic: No, Used For: Cooking, Model Name: Superior MP Atta', 500, 100]
].each do |product|
  Product.create(brand_id: product[0], name: product[1], sort_description: product[2], long_description: product[3], mrp: product[4], quantity: product[5])
end

puts 'Product Created'

[
  [1, 'Color', 'code'], [1, 'Size', 'string'],
  [2, 'Color', 'code'], [2, 'Size', 'string'],
  [3, 'Weight', 'string'],
  [4, 'Weight', 'string']
].each do |product_variant|
  ProductVariant.create(product_id: product_variant[0], name: product_variant[1], variant_type: product_variant[2])
end

puts 'ProductVariant Created'

[
  [1, '#FFFFFF'], [1, '#808080'], [1, '#000000'], [2, 'S'], [2, 'M'], [2, 'L'], [2, 'XL'], [2, 'XXL'],
  [3, '#0000FF'], [3, '#000000'], [3, '#FF0000'], [4, '5'], [4, '6'], [4, '7'], [4, '8'], [4, '9'],
  [5, '1 kg'], [5, '2 kg'], [5, '3 kg'], [5, '4 kg'], [5, '5 kg'],
  [6, '5 kg'], [6, '10 kg'], [6, '20 kg']
].each do |variant_option|
  VariantOption.create(product_variant_id: variant_option[0], name: variant_option[1])
end

puts 'VariantOption Created'

[
  ['Viral', 'viralhmistry@gmail.com']
].each do |customer|
  Customer.create(name: customer[0], email: customer[1])
end

puts 'Customer Created'
