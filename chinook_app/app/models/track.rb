class Track < ApplicationRecord

  SHORT = 180000
  LONG  = 360000

  scope :starts_with, -> (char) { where('name ILIKE ?', "#{ char }%")}

  scope :short,   -> { shorter_than(SHORT) }
  scope :medium,  -> { longer_than(SHORT).shorter_than(LONG) }
  scope :long,    -> { longer_than(LONG) }

  # def self.short
  #   shorter_than(SHORT)
  # end

  # def self.medium
  #   longer_than(SHORT).shorter_than(LONG)
  # end
  #
  # def self.long
  #   longer_than(LONG)
  # end
  #
  def self.shorter_than(milliseconds)
    if milliseconds < 0
      none
    else
    where('milliseconds < ?', milliseconds)
    end
  end

  def self.longer_than(milliseconds)
    if milliseconds < 0
      none
    else
      where('milliseconds >= ?', milliseconds)
    end
  end

end
