require "./lib/caesar_cipher"

describe "#encrypt" do 
    it 'returns an encrypted text' do
        caesar_cipher = Caesaer_Cipher.new
        expect(caesar_cipher.encrypt('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end

    it 'returns an empty string' do 
        caesar_cipher = Caesaer_Cipher.new
        expect(caesar_cipher.encrypt('', 5)).to eql('')
    end

    it 'returns a string with only characters' do 
        caesar_cipher = Caesaer_Cipher.new
        expect(caesar_cipher.encrypt('!@#$%^&*', 5)).to eql('!@#$%^&*')
    end

    it 'returns correct capitalization' do 
        caesar_cipher = Caesaer_Cipher.new
        expect(caesar_cipher.encrypt('AbCdEf', 1)).to eql('BcDeFg')
    end

end


    # Skips over blank spaces and symbols 
    # Handles capital and lowercase well 
    # Empty string