class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string  :title,     null: false
      t.integer :genre_id,  null: false
      t.text    :text,      null: false, :limit => 16777215
      t.float   :rating,    null: false, default: 0
      t.references :user,   foreign_key: true
      t.timestamps
    end
  end
end
