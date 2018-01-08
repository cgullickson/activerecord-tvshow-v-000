class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    show = Show.where("rating = ?", self.highest_rating)
    show
  end
end
