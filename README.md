# _Anagrams and Antigrams_

#### _Ruby week 1 Basic Ruby Code Review project for Epicodus Bootcamp_

#### Created By: **Christopher Neal**

## Technologies Used

* _Ruby_
* _Gems_
* _Bundler_
* _RSpec_
* _IRB_
* _Pry_
* 
## Description

_This project was created for Epicodus bootcamp to show proficiency in Ruby coding, RSpec testing, IRB, and Pry. The application is for testing whether two words or phrases are anagrams, antigrams, or otherwise._

_The program checks the entered words by the following criteria:_
* _Words must contain one vowel (a, e, i, o, u), unless they are on the list of common words with only 'y' as a vowel._
* _Alternatively, the user may choose to use a dictionary lookup gem, however it isn't perfect._

## System Requirements

* Ruby v2.6.5 recommended
* Postgres 12.9  
_(Note: Ruby gem dependencies will be installed automatically by Bundler.)_

## Setup/Installation Requirements

* _Clone the GitHub [repository](https://github.com/christophermneal/anagrams_and_antigrams) with `git clone https://github.com/ChristopherMNeal/anagrams_and_antigrams` or download and open the Zip on your local machine._
* _Next, navigate to the root directory of the project with `cd anagrams_and_antigrams`, then run `bundle install` in the terminal to install [Pry](https://pry.github.io/), [Dictionary_Lookup](https://github.com/nitishparkar/dictionary-lookup-rb), and [RSpec](https://rubygems.org/gems/rspec/versions/3.5.0)_
* _Then, still in the root directory, run `ruby ruby_script.rb` to start the script and use the program._
* _WARNING! The Dictionary Lookup gem isn't perfect. I added additional code for it to support common plural words, but others will return false._
* _To run all RSpec tests, run `rspec`_
* _Finally run `code .` in the terminal to open the project folder in [VS Code](https://code.visualstudio.com/) and view the code._

## Known Bugs

* _Dictionary Lookup gem does not recognize some words and should be replaced in the future._
* _Word check without using the dictionary only checks that each word has a vowel, but is by no means very thorough._

## Future Updates

* _Use more appropriate dictionary gem._

## License

_[MIT](https://opensource.org/licenses/MIT)_
Copyright (c) _2021_ _Christopher Neal_

## Support and Contact Details
* _[christopher.m.neal@gmail.com](mailto:christopher.m.neal@gmail.com)_
