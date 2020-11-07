module Mutations
  class TaskDelete < BaseMutation
    field :success, Boolean, null: false
    argument :id, ID, required: true

    def resolve(id:)
      task = Task.find(id)
      task.destroy
      { success: task.destroyed? }
    end
  end
end

