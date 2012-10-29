class Ppt
attr_accessor :humano, :maquina, :tiradas, :derrotas, :resultados, :resultado
def initialize
@humano = :piedra
@maquina = :papel
@tiradas = [:piedra, :papel, :tijeras]
@derrotas = {:piedra => :tijeras,  :tijeras => :papel, :papel => :piedra}
@resultados = [:gana, :pierde, :empata]
@resultado = :pierde
end

def obtener_humano(cadena)
@humano = cadena.to_sym

end

end
