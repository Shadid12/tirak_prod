class CreateApplicantprofiles < ActiveRecord::Migration[5.0]
  def change
    create_table :applicantprofiles do |t|
      t.string :fname
      t.string :lname

      t.timestamps
    end
  end
end
