class Movie < ActiveRecord::Base
  attr_accessible :poster_url, :release_year, :summary, :title

  validates :poster_url, :release_year, :summary, :title, presence: true
end
