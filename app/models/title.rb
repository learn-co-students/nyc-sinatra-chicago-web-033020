class Title < ActiveRecord::Base
  # add relationships here
  has_many :figure_titles
  has_many :figures, through: :figure_titles
end

# - A landmark `belongs_to` a figure and a figure `has_many` landmarks.
# - Titles and figures have a "many-to-many" relationship, so we'll need a join table.

#has_many :titles, through: :join table