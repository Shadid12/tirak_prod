class AddBioToApplicantprofile < ActiveRecord::Migration[5.0]
  def change
    add_column :applicantprofiles, :bio, :text
  end
end
