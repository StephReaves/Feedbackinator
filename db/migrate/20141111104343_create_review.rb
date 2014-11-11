class CreateReview < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :text
      t.references :sender
      t.references :receiver

      t.timestamps
    end
  end
end
