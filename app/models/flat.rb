class Flat < ApplicationRecord
  validates :name, :address, :description, :number_of_guests, :price_per_night, :picture_url, presence: true
  
  def self.search(search)
    where("address LIKE ?", "%#{search}%")
  end

  #include PgSearch::Model
  #pg_search_scope :search, against: [:name, :address, :description, :number_of_guests, :price_per_night]
end
