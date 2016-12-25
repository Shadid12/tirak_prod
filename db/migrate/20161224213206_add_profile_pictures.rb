class AddProfilePictures < ActiveRecord::Migration[5.0]
  def change
    add_column :applicantprofiles, :profile_pic, :string
    remove_column :applicantprofiles, :fname
    remove_column :applicantprofiles, :lname
  end
end
