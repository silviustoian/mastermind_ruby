require 'colorize'
class Mastermind
  @@winner=false
    def initialize
        @board_array = [' ', ' ', ' ', ' ']
        @computer_array = (1..4).to_a.shuffle
      end

    def board_show
        @board_array.each do |position|
            print position.to_s + '|'
        end
        puts "\n"
    end

    def replace_cell(position, number)
        @board_array[position - 1] = number
        @board_array.each do |position|
            print position.to_s + '|'
        end
        puts "\n"
    end



    def pick_cell
        board_show
        print @computer_array

        (1..4).each do |times|
            puts 'Pick a number for position ' + times.to_s + '!'
            guess_number = gets.chomp.to_s
            replace_cell(times.to_i, guess_number)

        end
        return @board_array.map(&:to_s)
        puts @board_array





    end
end

sly = Mastermind.new

sly.pick_cell
