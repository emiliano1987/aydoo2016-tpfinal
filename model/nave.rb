require_relative '../model/objeto_espacial'
require_relative '../model/efecto_constructivo'
require_relative '../model/efecto_destructivo_unidades'
require_relative '../model/efecto_masa_disminuye_porcentaje'

class Nave < ObjetoEspacial

  def initialize (*argumento)
    super(*argumento)
    generar_efectos_segun_objetos (efecto_choque)
  end

  #Metodo privado que graba por cada tipo de Objeto Espacial un Efecto
  private
  def generar_efectos_segun_objetos (mapa_choque)
    mapa_choque[Nave] = EfectoDestructivoUnidades.new 100
    mapa_choque[Misil] = EfectoDestructivoUnidades.new 80
    mapa_choque[Bomba] = EfectoDestructivoUnidades.new 50
    mapa_choque[Asteroide] = EfectoMasaDisminuyePorcentaje.new 50
    mapa_choque[Estrella] = EfectoConstructivo.new
  end
end
