require_relative '../model/ingreso_parametros_incorrectos_error'
require_relative '../model/objeto_espacial_sin_vida_error'

class ObjetoEspacial

  attr_accessor :vida, :masa, :objeto_vivo, :efecto_choque

  def initialize(*argumento)
    @efecto_choque = Hash.new
    if argumento.length == 2
      inicializa_con_parametros(argumento[0],argumento[1])
    elsif argumento.length == 0
      inicializa_sin_parametros
    else
      fail ParametrosIncorrectosError.new 
    end
  end

  #Metodo que verifica la existencia de un objeto espacial
  def objeto_esta_vivo
    if((@vida<=0)|| (@masa <= 0))
      @objeto_vivo = false
    else
      @objeto_vivo = true
    end
    return @objeto_vivo
  end

  /Metodo que impacta un objeto contra otro. 
  En caso de que uno de los elementos se encuentre sin vida, se ejecuta una excepcion/
  def impacta_con_objeto objeto_espacial
    if(self.objeto_esta_vivo == true && objeto_espacial.objeto_esta_vivo == true)
      @efecto_choque.fetch(objeto_espacial.class).impacto(self, objeto_espacial)
      objeto_espacial
    else
      fail ObjetoEspacialSinVidaError.new
    end
  end

  #Metodo que permite mantener el principio open-close
  def agregar_choque objeto_espacial, efecto
    @efecto_choque[objeto_espacial.class] = efecto
  end

  #Metodo que permite mantener el principio open-close
  def eliminar_choque objeto_espacil_a_eliminar
    @efecto_choque.delete(objeto_espacil_a_eliminar)  
  end
  
  #Metodos privados que inicializan los objetos espaciales
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