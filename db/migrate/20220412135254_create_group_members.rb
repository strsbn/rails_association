class CreateGroupMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :group_members do |t|
      t.references :user, null: false, foreign_key: true
      t.references :group,null: false, foreign_key: true

      t.timestamps
    end
    add_index :group_members, [:user_id, :group_id], unique: true
  end
end


# class CreateGroupMembers < ActiveRecord::Migration[7.0]
#   def change
#     create_table :group_members do |t|
#       t.integer :user_id
#       t.integer :group_id
#
#       t.timestamps
#     end
#     add_index :group_members, :user_id
#     add_index :group_members, :group_id
#     add_index :group_members, [:user_id, :group_id], unique: true
#   end
# end