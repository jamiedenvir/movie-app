class Movie < ApplicationRecord
  
  
  has_many :actors

  has_many :movie_genres
  has_many :genres, through: :movie_genres 


  
  validates :title, presence: true, length: { minimum: 2}

  validates :plot, length: {in: 3..300}

  validates :year, presence: true, length: { minimum: 4}

end
