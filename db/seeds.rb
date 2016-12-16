User.destroy_all
Question.destroy_all
Answer.destroy_all
Vote.destroy_all
Comment.destroy_all

20.times do
  user = User.create!(username: Faker::Pokemon.name,
    password: "password",
    email: Faker::Internet.email)

  question = Question.create!(q_content: Faker::Hipster.sentence(3, false, 4),
    user_id: rand(20))

  answer = Answer.create!(a_content: Faker::Hacker.say_something_smart,
    user_id: rand(20),
    question_id: rand(20))

  question.votes.create!(user_id: rand(20), value: 1)

  question.comments.create!(user_id: rand(20), c_content: Faker::StarWars.quote)

  answer.votes.create!(user_id: rand(20), value: 1)
  answer.comments.create!(user_id: rand(20), c_content: Faker::Music.instrument)
end
