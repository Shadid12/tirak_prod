class AddUserToApplicantprofile < ActiveRecord::Migration[5.0]
  def change
    add_reference :applicantprofiles, :user, index: true, unique: true, foreign_key: true
  end
end
