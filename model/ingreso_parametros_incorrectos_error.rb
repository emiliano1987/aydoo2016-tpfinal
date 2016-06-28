class ParametrosIncorrectosError < StandardError

  def initialize(msg='No puede ingresar uno o mas de 2 parametros. Recordar que el ingreso de dos parametros es el primero para la vida y el segundo para la masa del objeto espacial.')
    super
  end
end