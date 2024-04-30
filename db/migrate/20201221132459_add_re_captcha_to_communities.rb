class AddReCaptchaToCommunities < ActiveRecord::Migration[6.1][5.2]
  def change
    add_column :communities, :recaptcha_site_key, :string
    add_column :communities, :recaptcha_secret_key, :string
  end
end
