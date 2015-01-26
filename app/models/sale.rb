class Sale < ActiveRecord::Base
  belongs_to :product
  belongs_to :code
  belongs_to :user

  before_save :nomedavali

  protected 

  def nomedavali
    self.amount <= product.amount
  end
end
