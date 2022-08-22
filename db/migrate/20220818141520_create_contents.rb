class CreateContents < ActiveRecord::Migration[7.0]
  def change
    create_table :contents do |t|
      t.string :name
      t.text :body
      t.string :file

      t.timestamps
    end
  end
end
