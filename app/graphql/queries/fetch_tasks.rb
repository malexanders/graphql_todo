module Queries
  class FetchTasks < Queries::BaseQuery

    type Types::TasksType, null: false

    def resolve
      tasks = Task.all.order(priority: :asc)
      missing_priorities = Task::PRIORITIES - tasks.pluck(:priority).uniq
      OpenStruct.new(tasks: tasks, missing_priorities: missing_priorities)
    end
  end
end
