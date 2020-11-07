module Mutations
  class TaskCreate < BaseMutation
    field :task, Types::TaskType, null: false
    argument :params, Types::Input::TaskInputType, required: true

    def resolve(params:)
      task_params = Hash params

      begin
        task = Task.create!(task_params)

        { task: task }
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
          " #{e.record.errors.full_messages.join(', ')}")
      end
    end
  end
end
