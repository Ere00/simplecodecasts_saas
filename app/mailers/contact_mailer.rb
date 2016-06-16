class ContactMailer < ActionMailer::Base

    default to: "ere.0000@yahoo.com"


   def contact_email(name, email, body)
       
       # Instanssi variablet 
       @name = name 
       @email = email 
       @body = body 
       
       mail(from: email, subject: "Contact Form Message")
   end 
end