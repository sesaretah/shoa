class AddUuidToStream < ActiveRecord::Migration
  def change
    add_column :streams, :uuid, :string
    add_index :streams, :uuid
  end
end
