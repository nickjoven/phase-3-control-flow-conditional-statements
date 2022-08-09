def admin_login(username, password)
  if username == "admin" || username == "ADMIN" && password == 12345
    return "Access granted"
  else 
    "Access denied"
  end
end

def hows_the_weather(temperature)
  weather_desc = case temperature
  when 40..65 then "brisk"
  when 66..84 then "perfect"
  else 
    if temperature >= 85
      "too dang hot"
    elsif temperature <= 39
      "chilly"
    end
  end

  "It's #{weather_desc} out there!"
end

def fizzbuzz(num)
  # your code here
  fizz = (num % 3 == 0)
  buzz = (num % 5 == 0)
  case 
  when fizz && buzz then "FizzBuzz"
  when fizz then "Fizz"
  when buzz then "buzz"
  else num
  end
end

def calculator(operation, num1, num2)
  puts operation
  if ["+", "-", "*", "/"].include?(operation)
    num1.send(operation, num2)
  else
    puts "Invalid operation"
  end
end

