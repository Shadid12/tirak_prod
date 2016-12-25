class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.integer :applicant_id
      t.integer :poster_id
      t.timestamps
    end
  end
end
