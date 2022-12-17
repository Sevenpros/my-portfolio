# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

project1 = Project.create(name: 'Portfolio', description: 'this the portfolio', technologies: 'Ruby, Rails, React',
                          image: 'some picture', likes_counter: 0, comments_counter: 0, demo_url: 'demo url', source_code_url: 'source code')
project2 = Project.create(name: 'React App', description: 'this the React App', technologies: 'Ruby, Rails, React',
                          image: 'some picture', likes_counter: 0, comments_counter: 0, demo_url: 'demo url', source_code_url: 'source code')

like1 = Like.create(project: project1)
like2 = Like.create(project: project1)
like3 = Like.create(project: project2)
like4 = Like.create(project: project2)
like5 = Like.create(project: project1)

comment1 = Comment.create(project: project1, content: 'this project is awesome')
comment2 = Comment.create(project: project2, content: 'this app is dope')
comment3 = Comment.create(project: project1, content: 'I really lie this App')
comment4 = Comment.create(project: project2, content: 'Interesting Project')
comment5 = Comment.create(project: project1, content: 'Fantastic Project i like it alot')
