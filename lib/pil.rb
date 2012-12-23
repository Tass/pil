require 'forwardable'
require 'pil/password_list'

class Pil
  extend Forwardable

  def initialize
    @passwords = PasswordList.new
  end

  # ------------------------------ Class Methods ------------------------------

  def self.include?(password)
    Pil.new.include?(password)
  end

  def self.exclude?(password)
    !self.include?(password)
  end

  # ------------------------------ Instance Methods ------------------------------

  def_delegator :@passwords, :include?, :include?
  def_delegator :@passwords, :exclude?, :exclude?
end
