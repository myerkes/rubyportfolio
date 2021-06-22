class ContactsController < ApplicationController
    
    def index
        @new_contact = Contact.new()
    end

    def create
        @contact = Contact.new(contact_params)
        if @contact.deliver
          #render json: {message: "Email sent successfully"}
          flash[:notice] ="Message sent successfully"
          redirect_to contacts_path
        else
          #render json: @contact.errors
          flash[:notice] = "Error: Please try inputting your message again"
          redirect_to contacts_path
        end
    end

    private
    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end
end
