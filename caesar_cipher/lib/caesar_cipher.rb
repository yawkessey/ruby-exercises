class Caesaer_Cipher
    def encrypt(plain_text, shift_factor)
        result = ''
        plain_text.each_char do |char|
            # .ord gives the integer ordinal
            base = char.ord < 91 ? 65 : 97

            # Modifies Lowercase & Uppercase
            if char.ord.between?(65,90) || char.ord.between?(97,122)
                shift = (((char.ord - base) + shift_factor) % 26) + base
                # Converts ordinal number to character
                result += shift.chr
            # Keeps spaces & punctuation
            else
                result += char
            end
        end
        result
    end
end