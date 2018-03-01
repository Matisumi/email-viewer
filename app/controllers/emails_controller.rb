class EmailsController < ApplicationController
	before_action :all_emails, only: [:index, :create, :update, :destroy]
	before_action :set_emails, only: [:edit, :update, :destroy, :show]
	respond_to :html, :js

  def index
    @emails = Email.all

  end

  def show
		@email = Email.find(params[:id])
		respond_to :js
    @email.read = true
    @email.save
	end


  def update
    @email = Email.find(params[:id])
    @email.update_attributes!(read: true)

  end

  def destroy
    @email = Email.destroy(params[:id])
    redirect_to emails_url    
  end

  private 
  def all_emails
      @emails = Email.all
    end

    def set_emails
      @email = Email.find(params[:id])
		end

end

