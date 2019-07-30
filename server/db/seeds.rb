3.times do |i|
  project = Project.create(name: "Project#{i}", description: "Description#{i}")
  3.times do |j|
    issue = project.issues.create(title: "Title#{j}", description: "Description#{j}")
    3.times do |k|
      issue.progresses.create(description: "Description#{k}", spent_time: 10)
    end
  end
end
