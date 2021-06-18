#array = ["kiwi"]
array = ["kiwi", "durian", "starfruit", "mangos", "dragon fruits", "lychees", "pomelos"]

def oxford_comma(array)
    returnString = ""


    if array.size == 1
        returnString << array[0]
    end

    if array.size == 2
        returnString = array[0] + " and " + array[1]
    end



    if array.size > 2

        array.each_with_index do |fruit, index|
            if index == array.size - 1
                returnString << ", and " + fruit
                next

            elsif index != 0
                returnString << ", " + fruit
                next
            else
                returnString << fruit
            end
        end
    end
    returnString
end

puts oxford_comma(array)