# NHL Trophies API CLI application

### About this application

The NHL has many trophies with unique names. This application provides a description of what each trophy is awarded for using the NHL's REST API.

### Data source

https://records.nhl.com/site/api/trophy

### Installation

Clone this repostiory into your directory.

Navigate to the new directory then execute:
```
$ bundle install
```


### Using this application

To begin, navigate to the application's folder in your terminal and type *'ruby bin/run'*.  
Once running, the user can choose to view a list of all of the NHL's trophies.
From that list of trophies that is returned, the user can select a trophy by it's index to learn more about it.
Once a trophy is selected, the user can see what the trophy is awarded for, along with a description of the award.
The user can then view the list of trophies again or choose to exit the application.
The user can exit the application at any point by typing *'exit'* into the terminal.

### License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT). 
