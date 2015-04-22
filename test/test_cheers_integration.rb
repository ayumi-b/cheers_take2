require 'minitest/autorun'

class TestCheersIntegration < Minitest::Unit::TestCase

  def test_help_message
    output = `./cheers`
    expected =  <<EOS
I'd cheer for you, if I only knew who you were :(
Try again with `./cheers [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end


  def test_one_valid_argument_valid_name_no_bday
    output = `./cheers Abby`
    expected =  <<EOS
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
Abby’s just GRAND!

I would wish you a Happy Birthday, if I knew when that was!
EOS
    assert_equal expected, output
  end


  def test_one_valid_argument_no_name_valid_bday
    output = `./cheers 08/25`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(

Try again with ./cheers [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end


  def test_one_invalid_argument_invalid_name_numbers_no_bday
    output = `./cheers 1234`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(

Try again with ./cheers [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end

  def test_one_invalid_argument_invalid_name_spaces_no_bday
    output = `./cheers 1234`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(

Try again with ./cheers [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end



  def test_one_invalid_argument_no_name_invalid_bday
    output = `./cheers 99/99`
    expected =<<EOS
I'd cheer for you, if only I knew who you were :(

Try again with ./cheers [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end


  def test_two_valid_arguments
    output = `./cheers Abby 08/25`
    expected = <<EOS
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
Abby’s just GRAND!

Awesome! Your birthday's in 127 days! Happy Birthday in advance!
EOS
    assert_equal expected, output
  end

  def test_two_arguments_with_valid_name_invalid_bday_bad_format
    output = `./cheers Abby 0825`
    expected = <<EOS
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
Abby’s just GRAND!

I couldn't understand that. Could you give that to me in mm/dd format next time?
EOS
    assert_equal expected, output
  end



  def test_two_arguments_with_valid_name_invalid_bday_date_range_month
    output = `./cheers Abby 25/25`
    expected = <<EOS
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
Abby’s just GRAND!

I couldn't understand that. Could you give that to me in mm/dd format next time?
EOS
    assert_equal expected, output
  end


  def test_two_arguments_with_valid_name_invalid_bday_date_range_day
    output = `./cheers Abby 08/45`
    expected = <<EOS
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
Abby’s just GRAND!

I couldn't understand that. Could you give that to me in mm/dd format next time?
EOS
    assert_equal expected, output
  end


  def test_two_arguments_with_valid_name_invalid_bday_too_many_numbers
    output = `./cheers Abby 08/25/10`
    expected = <<EOS
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
Abby’s just GRAND!

I couldn't understand that. Could you give that to me in mm/dd format next time?
EOS
    assert_equal expected, output
  end



  def test_two_arguments_with_invalid_name_valid_bday
    output = `./cheers 1234 08/25`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(

Try again with ./cheers [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end


  def test_two_arguments_with_invalid_name_invalid_bday
    output = `./cheers 1234 25/25`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(

Try again with ./cheers [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end





  # Scenarios discussed in class:
  # 0 args -> help message
  # 1 valid arg
  # 1 invalid arg
  # 2 args
  #   * valid + valid
  #   * valid + invalid
  #   * invalid + valid
  #   * invalid + invalid
  #
  # Valid Names:
  #    * Regular name
  #    * Name with hyphens
  # Invalid Names:
  #   * birthday instead of name
  #   * all non-word characters
  #   * "" (empty string)
  #   * "  " (whitespace)
  # Valid Months:
  #   * m/dd (8/25)
  #   * mm/dd (08/25)
  #   * birthdays that already happened this year
  #   * birthdays that haven't happened yet this year
  # Invalid Months:
  #   * dd/mm (25/08)
  #   * dd/mm/yy (08/25/2015)


end
