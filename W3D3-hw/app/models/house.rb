class House < ActiveRecord::Base
  validates :address, presence: true

  has_many :residents, # have many residents
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'Person'
end

# created a House model
