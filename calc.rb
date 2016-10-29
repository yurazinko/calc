def calculate(str)
    arr = str.split('')
    symbols = %w{ + - / * ( ) }
    arr.collect! do |c| 
        if symbols.include?(c)
            c.to_sym
        else
            c.to_i
        end
    end
end

calculate('(5+10)*2')