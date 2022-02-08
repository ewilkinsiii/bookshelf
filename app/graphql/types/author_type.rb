class Types::AuthorType < Types::BaseObject

    description "one author"
    field :id, ID, null: false
    field :first_name, String, null: true #, camelize: false
    field :last_name, String, null: true
    field :yob, Int, null: false
    field :is_alive, Boolean, true, null: true

end
