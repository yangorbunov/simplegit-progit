class GuessNumberGame
    def initialize
      @secret_number = rand(1..100)
      @guessed = false
    end
  
    def play
      puts "Добро пожаловать в игру 'Угадай число'!"
      puts "Я загадал число от 1 до 100. Попробуй угадать."
  
      while !@guessed
        print "Введи число: "
        guess = gets.chomp.to_i
  
        check_guess(guess)
      end
    end
  
    private
  
    def check_guess(guess)
      if guess == @secret_number
        puts "Поздравляю! Ты угадал число!"
        @guessed = true
      elsif guess < @secret_number
        puts "Загаданное число больше."
      else
        puts "Загаданное число меньше."
      end
    end
  end
  
  # Создаем объект игры и запускаем игру
  game = GuessNumberGame.new
  game.play  