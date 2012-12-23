require 'helper'

class PasswordListTest < Test::Unit::TestCase

  def setup
    @in_list      = 'peachy'
    @not_in_list  = 'notinlist'
    @instance     = Pil::PasswordList.new
  end

  def test_passwords
    assert_instance_of(Array, @instance.passwords)
  end

  def test_include?
    assert_equal( true, @instance.include?(@in_list) )
    assert_equal( false, @instance.include?(@not_in_list) )
  end

  def test_exclude?
    assert_equal( false, @instance.exclude?(@in_list) )
    assert_equal( true, @instance.exclude?(@not_in_list) )
  end

  def test_count
    assert_equal( 10000, @instance.count )
  end

end
