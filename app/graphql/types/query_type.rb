module Types
  class QueryType < Types::BaseObject
    field :fetch_tasks, resolver: Queries::FetchTasks
  end
end
