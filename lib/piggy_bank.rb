class PiggyBank
	def initialize
		@@coin_count = 0
	end

	def deposit(coin)
		@@coin_count += coin
	end

	def shake
		"Clink!" if @@coin_count > 0
	end

	def break
		@@coin_count
	end
end