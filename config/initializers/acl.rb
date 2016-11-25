class Acl
  @url = 'http://localhost:3003/'

  def self.acceso(usuario, llaves)
      rpta = false
      if(usuario%llaves == 0)
          rpta = true
      end
      rpta
  end
end
