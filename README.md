# _Anagrams and Antigrams_

#### Created By _**Christopher Neal**_

#### _An application to determine whether two inputs are anagrams of each other._

## Technologies Used

* _Ruby_
* _RSpec_
* _IRB_
* _Pry_

## Description

_This project was created for Epicodus bootcamp to show proficiency in Ruby coding, RSpec testing, IRB, and Pry. The application is for testing whether two words or phrases are anagrams, antigrams, or otherwise._

_The program checks the entered words by the following criteria:_
_Words must contain one vowel (a, e, i, o, u), unless they are on the list of common words with only 'y' as a vowel._
_Alternatively, the user may choose to use a dictionary lookup gem, however it doesn't work very well and isn't recommended._

## Setup/Installation Requirements

* _Clone the GitHub [repository](https://github.com/christophermneal/anagrams_and_antigrams) with `git clone https://github.com/ChristopherMNeal/anagrams_and_antigrams` or download and open the Zip on your local machine._
* _Next, navigate to the root directory of the project with `cd anagrams_and_antigrams`, then run `bundle install` in the terminal to install [Pry](https://pry.github.io/), [Dictionary_Lookup](https://github.com/nitishparkar/dictionary-lookup-rb), and [RSpec](https://rubygems.org/gems/rspec/versions/3.5.0)_
* _Then, still in the root directory, run `ruby ruby_script.rb` to start the script and use the program._
* _WARNING! The Dictionary Lookup gem is pretty abysmal for this application. I can't recommend using it. I left it in the code for the time being, but it needs to be replaced in the future._
* _To run all RSpec tests, run `rspec`_
* _Finally run `code .` in the terminal to open the project folder in [VS Code](https://code.visualstudio.com/) and view the code._

## Known Bugs

* _Dictionary Lookup gem does not recognize common words such as 'Morse' 'dots' and should be replaced in the future._
* _Word check without using the dictionary only checks that each word has a vowel, but is by no means very thorough._

## Future Updates

* _Find a better dictionary gem._

## License

_[MIT](https://opensource.org/licenses/MIT)_
Copyright (c) _2021_ _Christopher Neal_

## Support and Contact Details
* _[christopher.m.neal@gmail.com](mailto:christopher.m.neal@gmail.com)_
