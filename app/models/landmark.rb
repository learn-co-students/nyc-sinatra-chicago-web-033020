class Landmark < ActiveRecord::Base
  # add relationships here
  belongs_to :figure
end


# - A landmark `belongs_to` a figure and a figure `has_many` landmarks.
