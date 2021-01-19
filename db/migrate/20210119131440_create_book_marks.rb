class CreateBookMarks < ActiveRecord::Migration[6.0]
  def change
    create_table :book_marks do |t|
      t.references :review,  foreign_key: true
      t.references :user,    foreign_key: true
      t.timestamps
    end
  end
end
