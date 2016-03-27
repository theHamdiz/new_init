# Ruby Dose Facebook Page
# https://facebook.com/ruby.dose
# Original thoughts are based on this StackOverFlow Question
# http://stackoverflow.com/questions/36242219/rename-initialize-method-to-the-more-friendly-init#36242318

require_relative "new_init/version"

class BasicObject
  def initialize(*args, &block)
    if self.respond_to?(:init)
      init(*args, &block)
      return
    elsif self.respond_to?("#{self.class.name}")
      send("#{self.class.name}", *args, &block)
    end
  end
end
