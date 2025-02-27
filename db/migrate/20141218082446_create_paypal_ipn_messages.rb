class CreatePaypalIpnMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :paypal_ipn_messages do |t|
      t.text :body
      t.string :status, limit: 64 #one of [nil, :errored, :success]

      t.timestamps
    end
  end
end
