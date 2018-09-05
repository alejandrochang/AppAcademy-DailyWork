class Person < ActiveRecord::Base
  validates :name, :house, presence: true

  belongs_to :house, # each person belongs to a house 
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'House'
end

#created a Person model
