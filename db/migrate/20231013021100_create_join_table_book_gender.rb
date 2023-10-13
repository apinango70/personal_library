class CreateJoinTableBookGender < ActiveRecord::Migration[7.0]
  def change
    create_join_table :books, :genders do |t|
      # t.index [:book_id, :gender_id]
      # t.index [:gender_id, :book_id]
    end
  end
end
