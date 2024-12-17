class AddKeyEncryptionPaddingToPaymentSettings < ActiveRecord::Migration[6.1][5.1]
  def change
    add_column :payment_settings, :key_encryption_padding, :boolean, default: false
  end
end
