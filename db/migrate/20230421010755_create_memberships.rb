class CreateMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships do |t|
      t.references :client, null: false, foreign_key: { to_table: :clients }
      t.references :gym, null: false, foreign_key: { to_table: :gyms }
      t.integer :charge

      t.timestamps
    end
  end
end
