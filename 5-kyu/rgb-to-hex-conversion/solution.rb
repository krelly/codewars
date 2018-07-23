def rgb(*args)
  rgb = args.take(3).map {|v| v.clamp(0,255)}
  "%02X%02X%02X" % rgb
end

class Numeric
  def clamp min, max
    [[self, max].min, min].max
  end
end