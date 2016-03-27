require_relative 'test_helper'
require 'must'

class MyClass
  def init(test1, test2)
    @test1, @test2 = test1, test2
  end

  def say_hello
     "Hello from a class that uses init rather than initialize"
  end
end
class T
  def T(test1, test2)
    @test1, @test2 = test1, test2
  end

  def say_hello
     "Hello from a class that uses same class name constructor rather than initialize"
  end
end

class InitTest < Minitest::Test
  def setup
    @init = MyClass.new('Hello', 'World')
    @same_name = T.new("Hello", "World")
  end
  def test_that_it_has_a_version_number
    refute_nil ::NewInit::VERSION
  end

  must "return say hello correctly" do
    assert_equal(@init.say_hello, "Hello from a class that uses init rather than initialize")
    assert_equal(@same_name.say_hello, "Hello from a class that uses same class name constructor rather than initialize")
  end

  must "include test1 and test2 instance_variables" do
    assert @init.instance_variable_defined?(:@test1)
    assert @init.instance_variable_defined?(:@test2)
    assert @same_name.instance_variable_defined?(:@test2)
    assert @same_name.instance_variable_defined?(:@test2)
  end
end
