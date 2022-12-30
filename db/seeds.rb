# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Create releases person creator
creator = Person.find_or_create_by(name: 'Juan', birthdate: '23-09-1990')

#Create receiver releases
receiver = Person.find_or_create_by(name: 'Maria', birthdate: '23-03-2005')

#Create releases
Release.create(
  creator: creator,
  receiver: receiver,
  subject: 'Asunto 1',
  content: 'Comunicado 1',
  previous_release: nil)
  
[
  {
    creator: creator,
    receiver: receiver,
    subject: 'Asunto 2',
    content: 'Comunicado 2',
    previous_release: Release.last
  },
  {
    creator: receiver,
    receiver: creator,
    subject: 'Asunto 3',
    content: 'Comunicado 3',
    previous_release: nil
  }
].each do |release|
  Release.find_or_create_by(release)
end

# Create attached files for release

[
  {
    release_id: Release.first,
  },
  {
    release_id: Release.first,
  }
].each do |attach|
  Attached.create(attach)
end

