# User

## Create User

```
mutation {
  createUser(input:{
    name: "User2",
    authProvider:{
      auth: {
        email: "test@example.com",
      	password: "123456"
      }
    }
  }
  ) {
    id
    email
    name
  }
}
```

## Sign In User

```
mutation {
  signinUser(input: {
    auth:{
      email:"a@example.com",
      password:"111111"
    }
  }) {
    token
    user {
      email
      name
    }
  }
}
```

# Project

## Get Projects

```
{
  projects {
    id
    name
    description
    issues
  }
}
```

## Create Project

```
mutation {
  createProject(
    input:{
      name: "title1"
      description: "description1"
    }
  ){
    project{
      name
      description
    }
  }
}
```

# Issue

## Get Issues

```
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

## Create Issue

```
mutation {
  createIssue(
    input:{
      projectId:1
      title: "IssueTitle"
      description: "Issue description"
      status: 0
      priority: 0
    }
  ){
   issue{
      title
      description
      status
      priority
    }
    result
  }
}
```

# Progress

## Get Progresses

```
{
  progresses {
    id
    description
    spentTime
  }
}
```

## Create Progress

```
mutation {
  createProgress(
    input:{
      issueId:1
      description: "Issue description"
      spentTime:35
    }
  ){
   progress{
      description
      spentTime
    }
    result
  }
}
```
