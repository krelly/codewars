module Converter
  def self.to_ascii(hex)
     [hex].pack('H*')
  end

  def self.to_hex(ascii)
    ascii.unpack('H*').first
  end
end