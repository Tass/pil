class Pil::PasswordList
  extend Forwardable

  attr_reader :passwords

  DEFAULT_PASSWORD_FILE = File.expand_path('../../data/passwords.txt', __FILE__)
    #File.dirname(__FILE__) + "../data/passwords.txt"

  # ------------------------------ Instance Methods ------------------------------

  def_delegator :@passwords, :count, :count

  def initialize(datafile = DEFAULT_PASSWORD_FILE)
    @datafile = datafile
    @passwords = []

    load_passwords
  end

  def include?(password)
    @passwords.include?(password)
  end

  def exclude?(password)
    !includes?(password)
  end

  private

    def load_passwords
      return [] if @datafile.nil?

      file = File.open(@datafile)
      file.each_line { |line| @passwords << line.chop }
    end
end
