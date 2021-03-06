# Implement your object-oriented solution here!

class SmallestMultiple
    attr_reader :lcm

    def initialize(limit)
        @limit = limit
        @lcm = lcm
    end

    def lcm
        multiple = 1
        (2..@limit).each do |divisor|
            # the number multiplied by each number in the limit and then divided by the greatest common denominator of both
            multiple *= divisor / gcd(multiple, divisor)
        end
        multiple
    end
      
    def gcd(multiple, divisor)
        while divisor > 0
            multiple %= divisor
            return divisor if multiple == 0
            divisor %= multiple
        end
        multiple
    end
end