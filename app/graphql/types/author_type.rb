class Types::AuthorType < Types::BaseObject

    description "one author"
    # field :name, Type, Nullability
    field :id, ID, null: false
    field :first_name, String, null: true #, camelize: false
    field :last_name, String, null: true
    field :yob, Int, null: false
    field :is_alive, Boolean, true, null: true
    field  :created_at, GraphQL::Types::ISO8601DateTime, null: false
    # Virtual attributes fields
    field :full_name, String, null: true

    #resolver method
    def full_name 
        "#{object.first_name} #{object.last_name}"
    end

end
