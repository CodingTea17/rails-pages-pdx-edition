class Businesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.column :name, :string
      t.column :telenum, :string
      t.column :street, :string
      t.column :city, :string
      t.column :state, :string
      t.column :zip, :string
      t.column :email, :string
      t.column :website, :string
      t.column :type_id, :integer
      
      t.timestamps
    end
  end
end
