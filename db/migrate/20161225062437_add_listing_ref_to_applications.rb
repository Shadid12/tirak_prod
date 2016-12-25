class AddListingRefToApplications < ActiveRecord::Migration[5.0]
  def change
    add_reference :applications, :listing, index: true
  end
end
