class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :business_mobile
      t.string :company_name
      t.string :primary_industry
      t.string :country
      t.string :areas_of_interest
      t.string :nature_of_the_business_in_one_sentence
      t.string :mode_of_collaboration
      t.string :description_of_technology_need
      t.string :technical_specifications
      t.datetime :due_date

      t.timestamps
    end
  end
end
