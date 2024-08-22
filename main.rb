print "Please enter your name: "
name = gets.chomp
puts "Hello #{name}, now answer this questions\n"

print 'Enter the number of questions: '
loop_times = gets.chomp.to_i

score = 0

operators = ['+', '-', '*']

(1..loop_times).each do |i|
  num1 = rand(10)
  num2 = rand(10)
  ope = operators.sample
  question = "#{num1} #{ope} #{num2}"
  answer = eval(question)
  puts question
  print "Enter your answer: "
  user_answer = gets.chomp.to_i
  if user_answer == answer
    puts "Right answer\n"
    score += 1
    puts "score: #{score}"
  else
    puts "Wrong answer\n"
    puts "The right answer is #{answer}"
  end
end
puts "Your final score is #{score}"
