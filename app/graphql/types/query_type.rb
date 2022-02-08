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

  end
end

