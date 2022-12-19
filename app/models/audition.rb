class Audition < ActiveRecord::Base
    belongs_to :role 

    def call_back
        update(hired: true) #sets the hired category/table to true when call_back acts on it
    end 
end

#sets audition as belonging to role #returns an instance of role associated with that audition

