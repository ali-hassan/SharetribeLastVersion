class SetTargetIdsOfTestimonials < ActiveRecord::Migration[6.1][6.1]
  def self.up
    Testimonial.all.each do |testimonial|
      testimonial.target = testimonial.participation.conversation.other_party(testimonial.author)
      testimonial.save
    end  
  end

  def self.down
  end
end
