require 'test_helper'

class TaskTest < ActiveSupport::TestCase

  test "La tarea debe tener un nombre" do
    task = Task.new
    assert !task.save, "La tarea se guardo sin nombre"
  end

  test "La tarea debe tener un nombre con minimo 6 caracteres" do
    task = Task.new
    task.name = "abc"
    assert !task.save, "La tarea se guardo con un nombre de menos de 6 caracteres"
  end
end
