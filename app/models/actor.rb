class Actor < ApplicationRecord
  
  belongs_to :movie

  validates :first_name, presence: true, length: { minimum: 2}

  validates :last_name, presence: true, length: { minimum: 2}

  validates :known_for, presence: true


end
