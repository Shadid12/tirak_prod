class PagesController < ApplicationController
    def notifications
        @l = current_user.listing
    end
end
