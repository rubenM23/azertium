class Person < ApplicationRecord
  has_many :releases_created, class_name: 'Release', foreign_key: 'creator_id'
  has_many :releases_received, class_name: 'Release', foreign_key: 'receiver_id'

  scope :adults, -> { where('birthdate <= ?', 18.years.ago) }
  
end
