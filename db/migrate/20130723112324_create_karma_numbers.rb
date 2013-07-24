class CreateKarmaNumbers < ActiveRecord::Migration
  def change
    create_table :karma_numbers do |t|
      t.text :description
      t.integer :number

      t.timestamps
    end
  end
end
