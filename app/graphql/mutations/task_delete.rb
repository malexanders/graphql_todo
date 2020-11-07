module Mutations
  class TaskDelete < BaseMutation
    field :task, Types::TaskType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      begin
        task = Task.find(id)
        task.destroy

        { task: task }
      rescue ActiveRecord::RecordNotFound => e
        raise "Task doesn't exist."
      end
    end
  end
end

