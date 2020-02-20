require 'piggy_bank'

describe PiggyBank do

# These statements assess storage of coins using the DEPOSIT METHOD
	context "Testing .deposit && .break" do
		it "should store 7" do
			subject.deposit(7)
			expect(PiggyBank.class_variable_get(:@@coin_count)).to eq(7)
			expect(subject.break).to eq(7)
		end
		it "shoudl store none" do
			subject = PiggyBank.new
			subject.deposit(0)
			expect(PiggyBank.class_variable_get(:@@coin_count)).to eq(0)
		end
	end

# ------------------------------------------------------------------ #



# These statements assess if the PiggyBank contains coins :: If PiggyBank does, it RETURNS "CLINK!""
	context "Testing .shake" do
		it "Clinks when money exists" do
			subject.deposit(1)
			expect(subject.shake).to eq "Clink!"
		end
		it "Does nothing when there's no money present" do
			subject = PiggyBank.new
			expect(subject.shake).not_to eq "Click!"	
		end
	end
end
# ------------------------------------------------------------------ #
