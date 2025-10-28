require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # Testes de Associação
  should belong_to(:user)
  should have_and_belong_to_many(:orders)
  should have_many_attached(:photos)

  # Testes de Validação de Presença
  should validate_presence_of(:name)
  should validate_presence_of(:model)
  should validate_presence_of(:price)
  should validate_presence_of(:manufacturer)
  should validate_presence_of(:overview)
  should validate_presence_of(:category)
  should validate_presence_of(:photos)

  # Testes de Validação de Formato/Valor
  should validate_numericality_of(:price).is_greater_than(0)
end
