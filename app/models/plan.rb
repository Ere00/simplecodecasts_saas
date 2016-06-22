class Plan < ActiveRecord::Base
    
    # Tuotteella voi olla monia käyttäjiä 
    has_many :users 
    
    
end