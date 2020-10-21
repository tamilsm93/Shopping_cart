class Category < ApplicationRecord



 has_many  :items, dependent: :delete_all

 mount_uploader :image, ImageUploader

 def detail
  detail =  Category.all
  binding.pry
 end
 def self.category_list
  return Category.all.map { |c| [c.name, c.id]}
 end
end
