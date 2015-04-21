# cheers_take2
The ruby cheers exercise (see: ayumi-b/cheers). This time, 3 weeks into learning Ruby, with tests!

## Instructions
(what is this program supposed to do?)



## Specifications, for non-interactive version of Cheers
(how does the program work?)

### Help Usage

Run the program by running `./cheers`

The program will print out:

> I'd cheer for you, if only I knew who you were :(


> Try again with `./cheers [Name] [MM/DD Birthday]`


### Regular Usage

Run the program by running `./cheers Abby 08/25`

The program outputs a cheer in the following format:

> Give me an... A

> Give me a... B

> Give me a... B

> Give me a... Y

> ABBY’s just GRAND!

* Follow the proper grammatical for a and an. The rule is based on
  whether the spelling on a letter would begin with a vowel.
* Ignore all special characters ( i.e. non-word characters) when
  printing the cheer (e.g. 'give me a....')
* Print the user's name out as it was originally input for the 'just
  GRAND' line

* If there was no input, the program would instead print out:

> I'd cheer for you, if only I knew who you were :(

After printing out the user's cheer, the program outputs the number of
days until the user's birthday.


> Awesome! Your birthday is in 45 days! Happy birthday in advance!


* If there was no input, the program would instead say:

> I would wish you a Happy Birthday, if I knew when that was!

> Try again with `./cheers [Name] [MM/DD Birthday]`

* If there was input that couldn't be parsed, the program would instead
  say:

> I couldn't understand that. could you give that to me in mm/dd format?




## Specifications, for interactive version of Cheers
(how does the program work?)

Start the program by running `./cheers`

The program should ask:

> Hello! What is your name?

The user types in their name, for example:

> Abby

The program outputs a cheer in the following format:

> Give me an... A

> Give me a... B

> Give me a... B

> Give me a... Y

> ABBY’s just GRAND!

* Follow the proper grammatical for a and an. The rule is based on
  whether the spelling on a letter would begin with a vowel.
* Ignore all special characters ( i.e. non-word characters) when
  printing the cheer (e.g. 'give me a....')
* Printe the user's name out as it was originally input for the 'just
  GRAND' line
* If there was no input, ask again.

After printing out the user's cheer, the program asks:

> Hey, Abby, what's your birthday? (mm/dd)


>08/25

* If there was no input, asks again until valid input is provided
* If there was input that couldn't be parsed, the program says:

> I couldn't understand that. could you give that to me in mm/dd format?

The program then outputs the number of days until the user's birthday:

> Awesome! Your birthday is in 45 days! Happy birtday in advance!
