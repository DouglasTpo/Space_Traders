require "test_helper"

class OrderTest < ActiveSupport::TestCase
  # Testes de Associação
  should belong_to(:user)
  should have_and_belong_to_many(:products)

  # Testes de Validação de Presença
  should validate_presence_of(:planet)
  should validate_presence_of(:address)
  should validate_presence_of(:total)

  # Testes de Validação de Formato/Valor
  should validate_numericality_of(:total).is_greater_than_or_equal_to(0)
end
