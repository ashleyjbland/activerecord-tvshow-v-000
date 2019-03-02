class Show < ActiveRecord::Base
  def Show::highest_rating
    self.maximum(:rating)
  end

  def Show::most_popular_show
    Show.order(rating: :desc).first
  end
end
