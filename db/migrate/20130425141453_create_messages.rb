class CreateMessages < ActiveRecord::Migration
  def up
    create_table :messages do |t|
      t.string :name
      t.string :contact
      t.text :description
    end
  end

  def down
  end
end
