class Product < ActiveRecord::Base
  belongs_to :provider
  has_many :sales
   
  def discount
  	@discont = self.sale_value - self.sales(:discount) / 100	
  end    		   
  
  def inventory
  	@inventory ||= self.amount - self.sales.pluck(:amount).sum
  end
end
