module Types
  class MutationType < Types::BaseObject
    field :task_delete, mutation: Mutations::TaskDelete
    field :task_create, mutation: Mutations::TaskCreate
  end
end
