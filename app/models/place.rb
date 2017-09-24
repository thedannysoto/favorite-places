class Place < ActiveRecord::Base
    belongs_to :country
    belongs_to :user

    def slug
        self.name.downcase.gsub(" ", "-")
    end
    
    def self.find_by_slug(slug)
        self.all.find{ |instance| instance.slug == slug }
    end
end