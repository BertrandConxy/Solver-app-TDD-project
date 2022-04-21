require './solver'

describe Solver do
    before :all do
    @solver = Solver.new
    end
    context "when given argument n to calculate factorial" do

        it "returns the factorial of the number given" do
            expect(@solver.find_factorial(5)).to eql(120)
        end

        it "returns 1 if argument is 0" do
            expect(@solver.find_factorial(0)).to eql(1)
        end

        it "raises Error when argument is negative integer" do
            expect(@solver.find_factorial(-5)).to eql("can't work on negative integers")
        end
    end

    context "when given a string argument" do
        it "returns a reversed string" do
            expect(@solver.reverse_string("hello")).to eql("olleh")
        end
    end
end