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
      rescue => e
        raise "Task delete failed."
      end
    end
  end
end

