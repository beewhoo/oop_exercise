require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'


class Testmultilinguist < MiniTest::Test

  def setup
    @test_inguist = Multilinguist.new
  end


  def test_language_canada
    assert_equal('en', @test_inguist.language_in('canada'))
  end

  def test_say_in_local_language
    @test_inguist.travel_to('france')
    assert_equal('bonjour', @test_inguist.say_in_local_language('hello'))
  end

  def test_travel_to
    @test_inguist.travel_to('japan')
    assert_equal('ja', @test_inguist.current_lang)

  end
end
