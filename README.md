# Quick review files list
Here is the list of files that contain the majority of the solution for this assignment:
- app/graphql/queries/fetch_tasks.rb
- app/graphql/mutations/task_create.rb
- app/graphql/mutations/task_delete.rb
- app/graphql/types/query_type.rb
- app/graphql/types/mutation_type.rb
- app/graphql/types/input/task_input_type.rb
- app/graphql/types/task_type.rb
- app/graphql/types/tasks_type.rb
- app/models/task.rb
- db/migrate/20201107161434_create_tasks.rb
- config/database.yml
- db/schema.rb
- Gemfile

# Setup

## **Clone repo**

```jsx
# Clone repo
git clone https://github.com/malexanders/graphql_todo.git

# cd into project dir
cd graphql_todo
```

## Run app

```bash
docker-compose up
```

## Setup DB

```
docker-compose run web rails db:create db:migrate
```

# GraphQL
Navigate to `localhost:3000/graphiql` in any browser and play with the queries and mutations defined below. 


## Queries
### fetchTasks
```
query {
  fetchTasks {
    tasks {
      id
      description
      priority
    }
    missingPriorities
  }
}
```

## Mutations
### taskCreate
```
mutation {
  taskCreate(input: { params: { description: "Finish opsleveltake home assignment in 90 mins ", priority: 1  }}) {
    task {
      id
      description
      priority
    }
  }
}
```
### taskDelete
```
mutation {
  taskDelete(input: { id: 5}) {
    success
  }
}
```
