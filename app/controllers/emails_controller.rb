class EmailsController < ApplicationController
	before_action :all_emails, only: [:index, :destroy]
	before_action :set_emails, only: [:update, :destroy, :show]
	respond_to :html, :js

  def show
    @email.read = true
    @email.save
	end


  def update
    @email.update_attributes!(read: true)
  end

  def destroy
    @email = Email.destroy(params[:id])
    redirect_to root_path   
  end

  private 
  def all_emails
      @emails = Email.all
    end

    def set_emails
      @email = Email.find(params[:id])
		end

end

