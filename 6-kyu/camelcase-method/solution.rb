class String
  def camelcase
    self.strip.split.map(&:capitalize).join
  end
end