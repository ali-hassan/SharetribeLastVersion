class AddTransactionAgreementLabelToCommunityCustomization < ActiveRecord::Migration[6.1]
  def change
    add_column :community_customizations, :transaction_agreement_label, :string
  end
end
