class CreateConnectables < ActiveRecord::Migration
  def change
    create_table :connectables do |t|
      t.references :permission, foreign_key: true
      t.belongs_to :connectable, index: true, foreign_key: false, polymorphic: true

      t.timestamps null: false
    end
  end
end
