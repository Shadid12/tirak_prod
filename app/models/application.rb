class Application < ApplicationRecord
    belongs_to :listing
    belongs_to :user, :foreign_key => :applicant_id
end
