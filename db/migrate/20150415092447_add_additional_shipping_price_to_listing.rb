class AddAdditionalShippingPriceToListing < ActiveRecord::Migration[6.1]
  def change
    # additional shipping price is initialized in listing.rb to use same currency as price
    add_money :listings,      :shipping_price_additional, currency: { present: false }, default: nil
  end
end
