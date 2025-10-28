require "test_helper"

class UserTest < ActiveSupport::TestCase
  # Testes de Associação
  should have_many(:products).dependent(:destroy)
  should have_many(:orders).dependent(:destroy)
end
