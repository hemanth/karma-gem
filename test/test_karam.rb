require 'test/unit'
require 'karma'

class HolaTest < Test::Unit::TestCase
  def test_karma_plus
    karam=Karma.new
    assert_equal 1, karma.karma("hemanth","++")
  end

  def test_karma_minus
    assert_equal 0, karma.karma("hemanth","--")
  end

  def test_karma_user
    assert_equal 0, karma.karma("hemanth")
  end
end
