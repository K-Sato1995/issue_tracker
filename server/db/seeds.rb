COLUMNS = ['TODO', 'IN PROGRESS', 'DONE'].freeze

3.times do |i|
  project = Project.create(name: "Project#{i}", description: "Description#{i}")
  COLUMNS.map { |column| project.columns.create(title: column) }
  project.columns.each do |column|
    3.times { |j| column.issues.create(title: "Title#{j}", description: "Description#{j}") }
  end
end