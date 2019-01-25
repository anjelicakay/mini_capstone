class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: {maximum: 254}

  validates :description, presence: true
  validates :description, length: {in: 10..300}
  
  validates :price, numericality: {less_than: 10_000, greater_than: 0}
  validates :price, presence: true


  def supplier
    Supplier.find_by(id: self.supplier_id)
  end


  def is_discounted?
    price < 2
  end

  def tax
    price * 0.09
  end
  
  def total
    price + tax
  end  

end
