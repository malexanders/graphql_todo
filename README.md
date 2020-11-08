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
