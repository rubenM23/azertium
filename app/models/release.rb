class Release < ApplicationRecord
  belongs_to :creator, class_name: 'Person'
  belongs_to :receiver, class_name: 'Person'
  belongs_to :previous_release, class_name: 'Release', required: false
  has_many :attacheds
end
