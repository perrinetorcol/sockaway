class Article < ApplicationRecord
  has_many_attached :photos
  belongs_to :user, dependent: :destroy

  CATEGORY = ['PANTACOURT', 'BERMUDA', 'PANTALON', 'JUPE', 'KILT', 'CHEMISE', 'T-SHIRT', 'ROBE', 'KIMONO', 'PEIGNOIR', 'PYJAMA', 'CHAUSSON', 'MULE', 'PANTOUFLE', 'VESTE', 'CAMISOLE', 'CARDIGAN', 'PARKA', 'SAC', 'SAC À MAIN', 'SAC À DOS', 'CAPE', 'CHAPEAU', 'GANT', 'BASKET']

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_article,
    against: [ :name, :description, :category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
