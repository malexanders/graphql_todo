# Queries
## fetchTasks
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

# Mutations
## createTask
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
## deleteTask
```
mutation {
  taskDelete(input: { id: 5}) {
    task {
      id
      description
      priority
    }
  }
}
```
