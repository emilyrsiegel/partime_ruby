class CaesarCipher
	def initialize(shift, alphabet = ('a'..'z').to_a.join + ('A'..'Z').to_a.join)
		@alphabet = alphabet
		@cipher = alphabet.chars.rotate(shift).join
	end

	def encrypt(text)
		encryptedtext=text.tr(@alphabet, @cipher)
		return encryptedtext
	end

	def decrypt(text)
		decryptedtext=text.tr(@cipher, @alphabet)
		return decryptedtext
	end
end

test = CaesarCipher.new(3)
encrypt1=test.encrypt("emily")
puts encrypt1
decrypt=test.decrypt(encrypt1)
puts decrypt

