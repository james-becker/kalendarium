class Event < ApplicationRecord
  belongs_to :calendar
  belongs_to :user, through: :calendar
end
