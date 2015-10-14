require 'date'
class Lesson1
  def sum(val = 0)
    sum = 0
    val.to_s.scan(/[0-9]/) { |i| sum += i.to_i }
    sum
  end

  def age(birthday)
    if birthday
      days = (Date.parse(Time.now.to_s) - Date.parse(birthday)).to_i
      years = days / 365
      hours = days * 24
      minutes = hours * 60
      seconds = minutes * 60
      "Я живу #{years} года или #{days} дней или #{hours}
      часов или #{minutes} минут или #{seconds} секунд!"
    else 'Invalid Date Format'
    end
  end

  def name
    name = gets.chomp
    lastname = gets.chomp
    patronymic = gets.chomp
    "Hello #{name} #{lastname} #{patronymic}!"
  end
end
