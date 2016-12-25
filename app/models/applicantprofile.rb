class Applicantprofile < ApplicationRecord
    belongs_to :user, optional: true
    mount_uploader :profile_pic, AvatarUploader
end
