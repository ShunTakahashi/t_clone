class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.text :content

      t.timestamps
    end
  end
end
