class Maintenance < ApplicationRecord
  belongs_to :motor
  belongs_to :user
  belongs_to :city
  has_many :materials, through: :maintenance_material_lists
  enum type: [:preventive, :corrective]
end