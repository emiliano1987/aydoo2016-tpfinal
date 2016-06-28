require_relative '../model/objeto_espacial'
require_relative '../model/efecto_masa_aumento_porcentaje'
require_relative '../model/efecto_nulo'

class Asteroide < ObjetoEspacial

  def initialize (*args)
    super(*args)
    generar_efectos_segun_objetos (efecto_choque)
  end

  #Metodo privado que graba por cada tipo de Objeto Espacial un Efecto
  private
  def generar_efectos_segun_objetos (mapa_choque)
    mapa_choque[Nave] = EfectoMasaAumentaPorcentaje.new 10
    mapa_choque[Misil] = EfectoNulo.new
    mapa_choque[Bomba] = EfectoNulo.new
    mapa_choque[Asteroide] = EfectoNulo.new
    mapa_choque[Estrella] = EfectoNulo.new 
  end
end
