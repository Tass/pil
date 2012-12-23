class Pil::PasswordList
  attr_reader :passwords

  def initialize(datafile = '')
    @datafile = datafile
    @passwords = ['cat','dog']
  end

  def include?(password)
    @passwords.include?(password)
  end

  def exclude?(password)
    !includes?(password)
  end
end
