class ContactsController < ApplicationController
    def new
        # Luo uusi Contact objekti muistiin 
        @contact = Contact.new
    end
    
    def create 
        @contact = Contact.new(contact_params)
        
        if @contact.save
            
            # Nämä on käytössä contact_mailer.rb 
            name = params[:contact][:name] # HASH Syntaksti 
            email = params[:contact][:email]
            body = params[:contact][:comments]

            # Välitä arvot mailerille ja lähetä email 
            #ContactMailer.contact_email(name, email, body).deliver
            
            
            flash[:success] = "Message sent"
            redirect_to new_contact_path
        else
            flash[:danger] = "Error occured, message has not been sent"
            redirect_to new_contact_path
        end
    end
    
    # Luodaan NEW lomakkeelle private metodi jossa määritellään contact_params white list
    private
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        end

end
