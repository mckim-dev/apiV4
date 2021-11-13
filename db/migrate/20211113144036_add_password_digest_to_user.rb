class AddPasswordDigestToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :pasword_digest, :string
  end
end
