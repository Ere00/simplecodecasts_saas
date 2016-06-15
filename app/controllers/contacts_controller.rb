class ContactsController < ApplicationController
    def new
        # Luo uusi Contact objekti muistiin 
        @contact = Contact.new
    end
    
    def create 
    end
end
