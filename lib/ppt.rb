class Ppt
attr_accessor :humano, :maquina, :tiradas, :derrotas, :resultados, :resultado
def initialize
@humano = 0
@maquina = 0
@tiradas = [:piedra, :papel, :tijeras]
@derrotas = {:piedra => :tijeras,  :tijeras => :papel, :papel => :piedra}
@resultados = [:gana, :pierde, :empata]
@resultado = :pierde
end
end
