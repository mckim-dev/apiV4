class RemovePaswordDigestFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :pasword_digest, :string
  end
end
