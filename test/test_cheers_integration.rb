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
end
