class Expense	
	attr_accessor :id, :item, :amount

	def initialize(id, item, amount)
		self.id = id
		self.item = item
		self.amount = amount
	end
end

expense = Expense.new(some_id, some_item, some_amount)
expenses << expense
