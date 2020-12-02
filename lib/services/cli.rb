class Cli

    def start
        puts ""
        puts "---------------------------------------------------------------------------------------------------------------------------------"
        puts "Welcome to the NHL Trophy API."
        puts "loading..."
        Api.load_data
        main_menu_options
    end

    def main_menu_options
        puts ""
        puts "Type '1' to view all NHL trophies."
        puts "Type 'exit' to exit program."
        main_menu
    end

    def main_menu
        input = get_input

        if input == "1"
            puts ""
            list_trophies
        elsif input == "exit"
            puts ""
            puts "Exiting Program"
            puts ""
            exit
        else
            invalid_choice
            main_menu_options
        end
    end

    def invalid_choice
        puts ""
        puts "Invalid Choice. Please Try Again!"
        puts ""
    end

    def get_input
        puts ""
        print "Enter Choice: "
        gets.chomp
    end

    def list_trophies
        Trophy.all.each.with_index(1) do |trophy, index|
            puts "#{index}. #{trophy.name}"
        end

        trophy_details_menu_options
    end

    def trophy_details_menu_options
        puts ""
        puts "Select the number next to the trophy you wish to know more about."
        puts "Or type 'exit' to exit program"
        trophy_details_menu
    end

    def trophy_details_menu
        input = get_input

        if input.to_i.between?(1, Trophy.all.length)
            index = input.to_i - 1
            trophy = Trophy.all[index]
            print_trophy_details(trophy)
            main_menu_options
        elsif input == "exit"
            puts ""
            puts "Exiting Program"
            puts ""
            exit
        else
            invalid_choice
            trophy_details_menu_options
        end
    end

    def print_trophy_details(trophy)
        puts "---------------------------------------------------------------------------------------------------------------------------------"
        puts ""
        puts "Trophy Name: #{trophy.name}"
        puts ""
        puts "Awarded to: #{trophy.awarded_to}"
        puts ""
        puts HTMLEntities.new.decode "#{trophy.description}"
        puts ""
        puts "---------------------------------------------------------------------------------------------------------------------------------"
    end

end