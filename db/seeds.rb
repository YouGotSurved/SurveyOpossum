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
marcia_questions = Question.create!({survey_id: marcia_survey.first.id, order_number: 1, question_type: "string" , text: "Example Text!", required: true})
joseph_questions = Question.create!({survey_id: joseph_survey.first.id, order_number: 1, question_type: "string" , text: "Example Text!", required: true})
dennis_questions = Question.create!({survey_id: dennis_survey.first.id, order_number: 1, question_type: "string" , text: "Example Text!", required: true})
andrew_questions2 = Question.create!({survey_id: andrew_survey.first.id, order_number: 2, question_type: "string" , text: "Example Text!", required: true})
marcia_questions2 = Question.create!({survey_id: marcia_survey.first.id, order_number: 2, question_type: "string" , text: "Example Text!", required: true})
joseph_questions2 = Question.create!({survey_id: joseph_survey.first.id, order_number: 2, question_type: "string" , text: "Example Text!", required: true})
dennis_questions2 = Question.create!({survey_id: dennis_survey.first.id, order_number: 2, question_type: "string" , text: "Example Text!", required: true})
andrew_questions3 = Question.create!({survey_id: andrew_survey.first.id, order_number: 3, question_type: "string" , text: "Example Text!", required: true})
marcia_questions3 = Question.create!({survey_id: marcia_survey.first.id, order_number: 3, question_type: "string" , text: "Example Text!", required: true})
joseph_questions3 = Question.create!({survey_id: joseph_survey.first.id, order_number: 3, question_type: "string" , text: "Example Text!", required: true})
dennis_questions3 = Question.create!({survey_id: dennis_survey.first.id, order_number: 3, question_type: "string" , text: "Example Text!", required: true})

andrew_answers = Answer.create!({question_id: andrew_questions.id, text: "This is the response to question 1"})
marcia_answers = Answer.create!({question_id: marcia_questions.id, text: "This is the response to question 1"})
joseph_answers = Answer.create!({question_id: joseph_questions.id, text: "This is the response to question 1"})
dennis_answers = Answer.create!({question_id: dennis_questions.id, text: "This is the response to question 1"})

andrew_answers = Answer.create!({question_id: andrew_questions2.id, text: "This is the response to question 2"})
marcia_answers = Answer.create!({question_id: marcia_questions2.id, text: "This is the response to question 2"})
joseph_answers = Answer.create!({question_id: joseph_questions2.id, text: "This is the response to question 2"})
dennis_answers = Answer.create!({question_id: dennis_questions2.id, text: "This is the response to question 2"})

andrew_answers = Answer.create!({question_id: andrew_questions3.id, text: "This is the response to question 3"})
marcia_answers = Answer.create!({question_id: marcia_questions3.id, text: "This is the response to question 3"})
joseph_answers = Answer.create!({question_id: joseph_questions3.id, text: "This is the response to question 3"})
dennis_answers = Answer.create!({question_id: dennis_questions3.id, text: "This is the response to question 3"})
