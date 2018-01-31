def get_lines(words, l)
  lines = []
  j = 0
  i = 0
  while i < words.length
    word = words[i]
    if lines[j].nil?
      lines[j] = []
      lines[j] << word
      i += 1
    else
      if (lines[j].join(" ") + " #{word}").length <= l
        lines[j] << "#{word}"
        i +=1
      else
        j += 1
      end
    end
  end
  lines
end

def textJustification(words, l)
  lines = get_lines(words, l)
  number_of_lines= lines.length - 1
  for i in 0..number_of_lines
    line = lines[i]
    number_of_words = line.length
    if i == number_of_lines || number_of_words == 1
      lines[i] = line.join(" ").ljust(l)
    else
      gaps = number_of_words - 1
      spaces = l - line.join("").length
      extra_spaces = spaces % gaps
      spaces_per_gap = spaces / gaps
      justified_line = ""
      for j in 0..line.length-1
        filler = if extra_spaces > 0
                    extra_spaces -= 1
                    spaces_per_gap + 1
                  else
                    spaces_per_gap
                  end
        justified_line += line[j]
        if j < line.length - 1
         justified_line += " " * filler
        end
      end
      lines[i] = justified_line
    end
  end
  lines
end


words = ["Two", "words."]
l= 11

print textJustification(words, l)
