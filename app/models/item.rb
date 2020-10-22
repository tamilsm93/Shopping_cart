class Item < ApplicationRecord


    # before_save :update_slug

    belongs_to :category

    validates :name, :description, :brand, :price, presence: true

    extend FriendlyId

    friendly_id :name, use: :slugged
    mount_uploader :image, ImageUploader

    # def update_slug
    #     self.slug = (name + brand).parameterize
    # end
    # #
    # def to_param
    #     "#{name}-#{brand}"
    # end


end
