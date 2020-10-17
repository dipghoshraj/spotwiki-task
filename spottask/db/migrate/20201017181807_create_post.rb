class CreatePost < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :images
      t.boolean :active
      t.string :reference
    end
  end
end
