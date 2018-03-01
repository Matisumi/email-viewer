class EmailsController < ApplicationController
	before_action :all_emails, only: [:index, :destroy] 
	before_action :set_emails, only: [:destroy, :show]
	respond_to :html, :js #will call the show.js the same way it calls show.html

#no index because the before action takes care of it

#show set the "read:true" status in the database
  def show
    @email.read = true
    @email.save
	end

#destroy the params given email
  def destroy
    @email = Email.destroy(params[:id])
    redirect_to root_path   
  end


#declare var that will be used in 4 functions
  private 
  def all_emails
      @emails = Email.all
    end

    def set_emails
      @email = Email.find(params[:id])
		end

end

