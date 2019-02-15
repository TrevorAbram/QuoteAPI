class CreateAddQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :add_quotes do |t|
      t.string :content
      t.string :author

      t.timestamps
    end
  end
end
