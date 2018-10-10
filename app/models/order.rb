class Order < ApplicationRecord
  belongs_to :client
  belongs_to :product

  validates :quantity, presence: true



  # Atualizando a quantidade em estoque de um produto
  before_validation :upgrade_product_quantity

  private
  def upgrade_product_quantity
    # binding.pry

    new_quantity = product.quantity - quantity

    if new_quantity >= 0
      product.update(quantity: new_quantity)
    else
      errors.add(:quantity, :invalid, message: "Sem estoque")
    end

  end

end
