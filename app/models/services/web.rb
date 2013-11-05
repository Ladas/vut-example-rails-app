class Web < Service
  validates_presence_of :email, :contact
  def fields
        [:company,:contact,:phone,:email,:description,:price,:price_with_vat,:payed]
  end
end
