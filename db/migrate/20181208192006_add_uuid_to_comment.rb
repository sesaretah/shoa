class AddUuidToComment < ActiveRecord::Migration
  def change
    add_column :comments, :uuid, :string
    add_index :comments, :uuid
  end
end
