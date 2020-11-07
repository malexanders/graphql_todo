module Types
  module Input
    class TaskInputType < Types::BaseInputObject
      argument :description, String, required: true
      argument :priority, Int, required: true
    end
  end
end
