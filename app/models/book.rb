class Book < ApplicationRecord
  validates :pages, presence: true
  validates :name, uniqueness: true
end
