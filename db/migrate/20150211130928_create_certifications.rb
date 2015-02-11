class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.string :certification_type
      t.date :completed_date
      t.date :expiry_date
      t.string :issuer
      t.string :instructor_name
      t.references :user, index: true

      t.timestamps
    end
  end
end
