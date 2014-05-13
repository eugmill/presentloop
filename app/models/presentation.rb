class Presentation < ActiveRecord::Base
  has_many :slides, dependent: :destroy
end
