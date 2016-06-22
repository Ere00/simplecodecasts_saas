class PagesController < ApplicationController
    def home
        @basic_plan = Plan.find(1) # ID 1
        @pro_plan = Plan.find(2) # ID 2
    end
    
    def about
    
    end
end
