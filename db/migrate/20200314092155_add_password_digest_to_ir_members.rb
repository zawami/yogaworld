class AddPasswordDigestToIrMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :ir_members, :password_digest, :string
  end
end
