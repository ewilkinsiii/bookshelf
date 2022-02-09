class Types::CoordinatesType < Types::BaseObject

    
    # field :name, Type, Nullability
    field :latitude, Float, null: true
    field :longitude, Float, null: true
    

    #resolver method
    def latitude
        object.first
    end
    
    def longitude
        object.last
    end

end