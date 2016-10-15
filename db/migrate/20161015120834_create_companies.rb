class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :slogan
      t.string :mission_statement
      t.string :street
      t.string :zip_code
      t.string :city
      t.string :country
      t.decimal :revenue

      t.timestamps
    end
  end
end
