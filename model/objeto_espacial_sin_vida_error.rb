class ObjetoEspacialSinVidaError < StandardError

  def initialize(msg='Uno de los objetos espaciales ingresados no posee vida o masa.')
    super
  end

end