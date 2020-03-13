class Patient < ApplicationRecord
  has_many :appointements
  has_many :doctors, through: :appointements
end
