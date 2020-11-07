module Queries
  class FetchTasks < Queries::BaseQuery

    type Types::TasksType, null: false

    def resolve
      OpenStruct.new(tasks: tasks, missing_priorities: missing_priorities)
    end

    def tasks
      @tasks ||= Task.all.order(priority: :asc)
    end

    def missing_priorities
      Task::PRIORITIES - tasks.pluck(:priority).uniq
    end
  end
end
