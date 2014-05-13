class Slide < ActiveRecord::Base
  belongs_to :presentation
  validates :presentation, presence: true
end
