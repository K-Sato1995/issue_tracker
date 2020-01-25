# Project

## Get Projects

```graphql
{
  projects {
    id
    name
    description
    issues
  }
}
```

## Get a specific project

```graphql
{
  project(id: 2) {
    id
    name
    description
    issues {
      id
    }
  }
}
```

## Create Project

```graphql
mutation {
  createProject(input: { name: "title1", description: "description1" }) {
    project {
      name
      description
    }
  }
}
```

## Update Project

```graphql
mutation {
  updateProject(
    input: { id: 1, name: "new-title", description: "description1" }
  ) {
    project {
      name
      description
    }
  }
}
```

## Delete Project

```graphql
mutation {
  deleteProject(input: { id: 1 }) {
    project {
      name
      description
    }
  }
}
```

# Issue

## Get Issues

```graphql
{
  issues {
    id
    title
    description
    status
    priority
    deadline
  }
}
```

## Get a specific issue

```graphql
{
  issue(id: 2) {
    id
    title
    description
    deadline
    priority
  }
}
```

## Create Issue

```graphql
mutation {
  createIssue(
    input: {
      projectId: 1
      title: "IssueTitle"
      description: "Issue description"
      status: 0
      priority: 0
    }
  ) {
    issue {
      title
      description
      status
      priority
    }
    result
  }
}
```

## Create Progress

```graphql
mutation {
  createProgress(
    input: { issueId: 1, description: "Issue description", spentTime: 35 }
  ) {
    progress {
      description
      spentTime
    }
    result
  }
}
```
