class Role < ActiveRecord::Base #role is pulling from the base using activerecord
    has_many :auditions #returns all the auditions associated with the role

    def actor
        auditions.map{|a| a.actor} #map through all off the auditions individually, bring back actor
    end 

    def locations
        auditions.map{|a| a.location} #map through all of the auditions individually, bring back location
    end 

    def lead
        auditions.find_by(hired: true) || "no actor has been hired for this role"
    end 

    def understudy
        auditions.where(hired: true).second || "no actor has been hired for this role" #go through auditions and find where hired is true. return the second to each
    end 
end 