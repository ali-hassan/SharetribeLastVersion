class AddBlockedToTestimonials < ActiveRecord::Migration[6.1][5.1]
  def change
    add_column :testimonials, :blocked, :boolean, default: false
  end
end
