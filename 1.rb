puts ((Array.new(999) { |i| i + 1 }).find_all { |i| i % 3 == 0 or i % 5 == 0 }).inject { |a, b| a + b }
