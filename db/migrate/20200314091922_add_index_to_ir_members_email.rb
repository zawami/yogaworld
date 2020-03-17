class AddIndexToIrMembersEmail < ActiveRecord::Migration[6.0]
  def change
    add_index :ir_members, :email, unique: true
  end
end
