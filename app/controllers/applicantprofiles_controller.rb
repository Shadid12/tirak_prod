class ApplicantprofilesController < ApplicationController
    before_action :authenticate_user!
    
    def new
        @applicantprofile = Applicantprofile.new
    end
    
    def create
        @applicantprofile = Applicantprofile.new(applicantprofile_params)
        @applicantprofile.save
        current_user.applicantprofile = @applicantprofile
        redirect_to applicantprofile_path(@applicantprofile)
    end
    
    def show
        @applicantprofile = current_user.applicantprofile
    end
    
    def edit
    end
    
    private
    
    def applicantprofile_params
        params.require(:applicantprofile).permit(:profile_pic)
    end
end
