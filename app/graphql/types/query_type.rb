module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field  :test_field, String ,   null: false do
      description "An example field added by the generator" 
      argument :name, String, required: true
    end
    def test_field(name:)
      Rails.logger.info context[:time]
     "Hello #{name}!"
    end

    field :author, Types::AuthorType , null: true do
        description "Returns one Author instance" 
        argument :id, ID, required: true
    end

    def author(id:)
      Author.where(id: id).first
    end

    field :authors, [Types::AuthorType ], null: false

    def authors 
        Author.all
    end

    field :authors_by_last_name, [Types::AuthorType ], null: false do
      description "Returns authors that contain the given name" 
      argument :name, String, required: true
    end

    def authors_by_last_name(name:)
      Author.where('last_name LIKE ?', "%#{name}%")
    end


  end
end

