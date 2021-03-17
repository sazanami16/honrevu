class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string  :title,     null: false
      t.integer :genre_id,  null: false
      t.string  :text,      null: false
      t.float   :rating,    null: false, default: 0
      t.references :user,   foreign_key: true
      t.timestamps
    end
  end
end
