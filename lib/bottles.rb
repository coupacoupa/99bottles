class Bottles
    def verse(n)
        return <<-VERSE
#{getText("No more", n, 0, n)} #{getText("bottle", n, 1, "bottles")} of beer on the wall, #{getText("no more", n, 0, n)} #{getText("bottle", n, 1, "bottles")} of beer.
Take #{getText("it", n, 1, "one")} down and pass it around, #{getText("no more", n - 1, 0, n - 1)} #{getText("bottle", n - 1, 1, "bottles")} of beer on the wall.
VERSE
    end

    def getText(base_text, n, m, condition_text)
        # if {n} == {m}, {base_text} else {conditional_text}
        result = n == m ? base_text : condition_text
    end
end