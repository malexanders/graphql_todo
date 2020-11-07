module Types
  class TasksType < Types::BaseObject
    field :tasks, [Types::TaskType], null: false
    field :missing_priorities, [Integer], null: false
  end
end
