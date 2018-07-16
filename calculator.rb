$stdout.puts 'Which calculator? a for advanced b for basic'
$stdout.flush
mode = $stdin.gets.chomp

puts "You have chosen #{mode}"

case mode
when "b"
  $stdout.puts 'Choose your operation by selecting the relevant operator. +,-,* or /'
  $stdout.flush
  operator = $stdin.gets.chomp

  puts "You have chosen #{operator}"

  case operator
  when "+"
    $stdout.puts 'Please choose your first number'
    $stdout.flush
    num1 = $stdin.gets.chomp
    $stdout.puts 'Choose num 2'
    $stdout.flush
    num2 = $stdin.gets.chomp

    int1 = Float(num1)
    int2 = Float(num2)

    result = int1 + int2
    puts "The result is #{result}"
  when "-"
    $stdout.puts 'Please choose your first number'
    $stdout.flush
    num1 = $stdin.gets.chomp
    $stdout.puts 'Choose your second number'
    $stdout.flush
    num2 = $stdin.gets.chomp

    int1 = Float(num1)
    int2 = Float(num2)

    if int1>int2
      result = int1 - int2
    elsif int2>int1
      result = int2 - int1
    end

    puts "The result is #{result}"
  when "*"
    $stdout.puts 'Please choose your first number'
    $stdout.flush
    num1 = $stdin.gets.chomp
    $stdout.puts 'Choose your second number'
    $stdout.flush
    num2 = $stdin.gets.chomp

    int1 = Float(num1)
    int2 = Float(num2)

    result = int1 * int2
    puts "The result is #{result}"
  when "/"
    $stdout.puts 'Choose the number you want devided'
    $stdout.flush
    num1 = $stdin.gets.chomp
    $stdout.puts 'The number that devides the first one'
    $stdout.flush
    num2 = $stdin.gets.chomp

    int1 = Float(num1)
    int2 = Float(num2)

    if !(int2 == 0)
      result = int1 / int2
      puts "The result is #{result}"
    end
  else
    $stdout.puts 'Please choose a relevant operator. +,-,* or /'
    $stdout.flush
    operator = $stdin.gets.chomp

    puts "You have chosen #{operator}"
  end
when "a"
  $stdout.puts 'Choose your operation by selecting the relevant operator. ^,~'
  $stdout.flush
  operator = $stdin.gets.chomp

  puts "You have chosen #{operator}"
  case operator
  when "^"
    $stdout.puts 'Please choose the number you want raised'
    $stdout.flush
    num1 = $stdin.gets.chomp
    $stdout.puts 'Choose your power'
    $stdout.flush
    num2 = $stdin.gets.chomp

    int1 = Float(num1)
    int2 = Float(num2)

    result = int1**int2


  when "bmi"
    $stdout.puts 'Choose imperial (imp) or metric (met) mode'
    $stdout.flush
    operator = $stdin.gets.chomp
    when "met"
      $stdout.puts 'Please choose your height in Inches'
      $stdout.flush
      num1 = $stdin.gets.chomp
      $stdout.puts 'Choose weight in pounds'
      $stdout.flush
      num2 = $stdin.gets.chomp

      int1 = Float(num1)
      int2 = Float(num2)

      if int1 <= 0 || int2 <= 0
        $stdout.puts 'Please choose valid height in Inches'
        $stdout.flush
        num1 = $stdin.gets.chomp
        $stdout.puts 'Choose valid weight in pounds'
        $stdout.flush
        num2 = $stdin.gets.chomp
      else
        height = in1**int1
        result = int2/height
        puts "The result is #{result}"
      end
    when "imp"
      $stdout.puts 'Please choose your height in metres'
      $stdout.flush
      num1 = $stdin.gets.chomp
      $stdout.puts 'Choose weight in kgs'
      $stdout.flush
      num2 = $stdin.gets.chomp

      int1 = Float(num1)
      int2 = Float(num2)
      if int1 <= 0 || int2 <= 0
        $stdout.puts 'Please choose valid height in metres'
        $stdout.flush
        num1 = $stdin.gets.chomp
        $stdout.puts 'Choose valid weight in kgs'
        $stdout.flush
        num2 = $stdin.gets.chomp
      else
        height = in1**int1
        result = int2/height
        puts "The result is #{result}"
      end
  end
end
