class Article < ApplicationRecord
  has_many_attached :photos
  belongs_to :user, dependent: :destroy

  CATEGORY = ['PANTACOURT', 'BERMUDA', 'PANTALON', 'SHORT', 'JUPE', 'KILT', 'CHEMISE', 'T-SHIRT', 'ROBE', 'KIMONO', 'PEIGNOIR', 'PYJAMA', 'CHAUSSON', 'MULE', 'PANTOUFLE', 'VESTE', 'CAMISOLE', 'TRICOT', 'CARDIGAN', 'PARKA', 'SAC', 'SAC À MAIN', 'SAC À DOS']

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category, presence: true

end
