desc 'Import contents of categories.json and products.json into the database'
task import_content: :environment do
  categories = JSON.parse(File.read("#{Rails.root}/categories.json"))
  products = JSON.parse(File.read("#{Rails.root}/products.json"))
  categories.each do |category_name|
    Category.find_or_create_by(name: category_name)
  end
  products.each do |product|
    Category.where('lower(name) like ?', product['category'].downcase)
            .first
            .products
            .find_or_create_by(product.except('category'))
  end
end
