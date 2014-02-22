require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "el usuario debe tener un unico nombre de usuario" do
    user = User.new
    user.name = users(:cesar).name
    user.email = "c.orozcomarin@gmail"
    user.password = "12345678"

    assert !user.save
  end
end