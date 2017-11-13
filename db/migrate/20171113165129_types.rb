class Types < ActiveRecord::Migration[5.1]
  def change
    create_table :types do |t|
      t.column :category, :string

      t.timestamps
    end
  end
end
