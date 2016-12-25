class ApplicationsController < ApplicationController 
    def create
        
    end
    
    def create
        k = Application.find_by(applications_params)
        if k.nil?
            @listing = Listing.find(params[:listing_id])
            app = @listing.applications.new(app_params)
            if app.save
                respond_to do |format|
                    format.html { redirect_to application_path(app), notice: 'successfully applied to the job' }
                end
            end
        else
            respond_to do |format|
                format.html { redirect_to listings_path, notice: 'you have already applied to that job' }
            end
        end
    end
    
    private 
    
    def applications_params
        params.permit(:listing_id, :applicant_id, :poster_id)
    end
    
    def app_params
        params.permit(:applicant_id, :poster_id)
    end
end
