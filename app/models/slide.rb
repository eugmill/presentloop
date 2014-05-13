class Slide < ActiveRecord::Base
  belongs_to :presentation
  validates :presentation, presence: true

  def get_next_slide
    slides = self.presentation.slides
    slides.each_with_index do |slide,index|
      if self == slide && !slides[index+1].nil?
        return slides[index+1]
      end
    end
    return nil
  end

  def get_previous_slide
    slides = self.presentation.slides
    return nil if self == slides.first
    slides.each_with_index do |slide,index|
      if self == slide
        return slides[index-1]
      end
    end
    return nil
  end
end
