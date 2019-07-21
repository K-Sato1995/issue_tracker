# Category

## Get Categories

```
{
  categories {
    id
    name
    description
  }
}
```

## Create Category

```
mutation {
  createCategory(
    input:{
      name: "title1"
      description: "description1"
    }
  ){
    category{
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
      categoryId:1
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