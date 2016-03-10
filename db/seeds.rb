# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
andrew = Author.create!([{name: "andrew", password: "password" }])
marcia = Author.create!([{name: "marcia", password: "password" }])
joseph = Author.create!([{name: "joseph", password: "password" }])
dennis = Author.create!([{name: "dennis", password: "password" }])


andrew_survey = Survey.create!([{title: "title here!", author_id: andrew.first.id, description: "this is the description", link:"test link!"}])
marcia_survey = Survey.create!([{title: "title here!", author_id: marcia.first.id, description: "this is the description", link:"test link!"}])
joseph_survey = Survey.create!([{title: "title here!", author_id: joseph.first.id, description: "this is the description", link:"test link!"}])
dennis_survey = Survey.create!([{title: "title here!", author_id: dennis.first.id, description: "this is the description", link:"test link!"}])

andrew_questions = Question.create!({survey_id: andrew_survey.first.id, order_number: 1, question_type: "string" , text: "Example Text!", required: true})
