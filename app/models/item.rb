class Item < ApplicationRecord
  # has_many   :commnets, dependent: :destroy
  # has_many   :images,   dependent: :destroy
  # belongs_to :category
  # belongs_to :brand
  # belongs_to :user

  with_options presence: true do
    validates :name, length: { minimum: 1, maximum: 40 }
    validates :introduction, length: { minimum: 1, maximum: 1000 }
    validates :condition
    validates :area
    validates :price, numericality: { only_integer: true , greater_than: 299, less_than: 10000000 }
    validates :preparation_day
    validates :postage
  end
end
