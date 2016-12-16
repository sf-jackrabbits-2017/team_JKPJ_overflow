User.destroy_all
Question.destroy_all
Answer.destroy_all

10.times do
  user = User.new(username: Faker::Pokemon.name, password: "password", email: Faker::Internet.email)
  user.save!

  user.questions.create(q_content: Faker::Hipster.sentence(3, false, 4),)

  random = rand(1..10)
  user.answers.create(a_content: Faker::Hacker.say_something_smart, question_id: random)
end
