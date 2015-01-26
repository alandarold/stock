class Product < ActiveRecord::Base
  belongs_to :provider
  has_many :sales

  
  def inventory
  	@inventory ||= self.amount - self.sales.pluck(:amount).sum
  end
end
