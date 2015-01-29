class Sale < ActiveRecord::Base
  belongs_to :product
  belongs_to :code
  belongs_to :user
  has_many :products

  

  before_save :valedate_presence_product

  protected 

  def valedate_presence_product
  	 self.amount <= product.inventory
  end
end 