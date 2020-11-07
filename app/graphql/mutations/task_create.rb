module Mutations
  class TaskCreate < BaseMutation
    field :task, Types::TaskType, null: false
    argument :params, Types::Input::TaskInputType, required: true

    def resolve(params:)
      { task: Task.create!(Hash params) }
    end
  end
end
