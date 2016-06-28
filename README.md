# aydoo2016-tpfinal
Repositorio de Emiliano Veppo para el Trabajo Práctico Final de la materia AyDOO.

Revision realizada por Matias Mansilla

<h2> Solución implementada </h2>
<h5> Puntos Importantes </h5>
<em>La idea de la solucion la desarrolle en tres aspectos: </em>
<ul><li><b>La creación de los objetos espaciales</b>. Estos tienen en si los mismos metodos y atributos por lo que genere una clase padre a la cual cualquier objeto espacial pudiera heredar.</li>
<li><b>Al generar los efectos</b>, los pense por partes separadas dependiendo de si la suma o resta que provocaban el "choque" entre los objetos eran por medio de porcentajes o unidades. Al intentar generar un diagrama de clases me percaté que todo se podria heredar de una clase ya que todas las clases efecto utilizan un método similar y utilizan los mismos parametros (en este caso es impacto entre dos objetos)</li>
<li>La interacción entre estos dos puntos anteriormente reelevados, lo que permite asignar un efecto a cualquier tipo de objeto. Esto es generado mediante un Hash Map y permite que se cumpla con el principio open/close con los metodos agregar_choque y eliminar_choque al intentar modificarlo </li></ul>

<h5>Aclaración por posibles smells:</h5>
<ul><li> Hay dos clases que poseen métodos que no se implementan (efectos.rb y efecto_nulo.rb) pero se comentan para comprender su utilización</li>
<li> A simple vista, hay acoplamiento de codigo en la clase objeto_espacial.rb pero para tener en cuenta hay dos metodos privados que setean a los objetos una vez inicializados</li></ul>
