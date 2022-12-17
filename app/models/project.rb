class Project < ApplicationRecord
  has_many :comments
  has_many :likes
  validates :name, presence: true
  validates :description, presence: true
  validates :technologies, presence: true
  validates :image, presence: true
  validates :demo_url, presence: true
  validates :source_code_url, presence: true
end
