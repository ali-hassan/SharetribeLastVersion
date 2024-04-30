class AddTransactionIdToTestimonials < ActiveRecord::Migration[6.1]
  def change
    add_column :testimonials, :transaction_id, :integer, after: :participation_id
  end
end
