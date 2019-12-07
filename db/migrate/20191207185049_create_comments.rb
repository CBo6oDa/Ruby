class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :username
      t.text :body
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
    add_index :posts, :post_id
  end
end
