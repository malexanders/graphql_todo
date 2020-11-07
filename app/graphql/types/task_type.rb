module Types
  class TaskType < Types::BaseObject
    field :id, ID, null: false
    field :description, String, null: true
    field :priority, Integer, null: true
    field :due_date, GraphQL::Types::ISO8601DateTime, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
