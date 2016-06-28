require_relative '../model/ingreso_parametros_incorrectos_error'
class ObjetoEspacial

  attr_accessor :vida, :masa, :objeto_vivo, :efecto_choque

  def initialize(*args)
    @efecto_choque = Hash.new

  if args.length == 2
    inicializa_con_parametros(args[0],args[1])
  elsif args.length == 0
    inicializa_sin_parametros
  else
    fail ParametrosIncorrectosError.new end
  end

  def objeto_esta_vivo
    if((@vida<=0)|| (@masa <= 0))
      @objeto_vivo = false
    else
      @objeto_vivo = true
  end
    return @objeto_vivo
  end

  def impacta_con_objeto objeto_espacial
    if(self.objeto_esta_vivo == true && objeto_espacial.objeto_esta_vivo == true)
      @efecto_choque.fetch(objeto_espacial.class).impacto(self, objeto_espacial)
      objeto_espacial
    end
  end

  private
  def inicializa_con_parametros (vidas,masas)
    @vida = vidas
    @masa = masas
    @objeto_vivo = objeto_esta_vivo
  end

  def inicializa_sin_parametros
    @vida = 100
    @masa = 100
    @objeto_vivo = true
  end
end