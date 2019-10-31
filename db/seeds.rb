puts "Seeding Database..."
puts ""

meateater = Project.create!({ title: "Meateater", description: "Media company with the goal to present their content in a user-friendly online environment." })
draftkings = Project.create!({ title: "Draft Kings", description: "Media company with the goal to help fans handle their fantasy leagues!" })
zelda = Project.create!({ title: "The Legend of Zelda", description: "A delightful game made for the most courageous of heroes." })

projects = [
  meateater,
  draftkings,
  zelda
]

puts "Creating Projects..."

projects.each do |project|
  puts "#{project[:title]} project successfully created ✔"
end

columns = [
  { title: "To Do", project: meateater },
  { title: "In Progress", project: meateater },
  { title: "Done", project: meateater },
  { title: "To Do", project: draftkings },
  { title: "In Progress", project: draftkings },
  { title: "Done", project: draftkings },
  { title: "To Do", project: zelda },
  { title: "In Progress", project: zelda },
  { title: "Done", project: zelda }
]

puts ""
puts "Adding columns to projects..."

columns.each do |column|
  Column.create!(column)
  puts "#{column[:title]} column successfully created for project #{column[:project][:title]} ✔"
end

puts ""

tasks = [
  { body: "Write a task", project: meateater, column: meateater.columns[2] },
  { body: "Build a React frontend", project: meateater, column: meateater.columns[0] },
  { body: "Start a fantasy league", project: draftkings, column: draftkings.columns[0] },
  { body: "Develop mobile app", project: draftkings, column: draftkings.columns[2] },
  { body: "Obtain the Master Sword", project: zelda, column: zelda.columns[1] },
  { body: "Defeat Ganon", project: zelda, column: zelda.columns[1] }
]

puts "Adding tasks to projects..."

tasks.each do |task|
  Task.create!(task)
  puts "Successfully added task to #{task[:column].title} column in project #{task[:project][:title]} ✔"
end