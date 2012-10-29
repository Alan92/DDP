require 'ppt'
describe Ppt do
before :each do
@ppt_obj=Ppt.new
end

it "Deberia de haber una tirada del humano" do
@ppt_obj.humano.should == :piedra
end

it "Deberia de haber una tirada de la maquina" do
@ppt_obj.maquina.should == :papel
end

it "Deberia de haber una lista de las posibles tiradas" do
@ppt_obj.tiradas.should == [:piedra, :papel, :tijeras]
end

it "Deberia de haber una lista con las jugadas posibles y quien gana" do
@ppt_obj.derrotas.should == {:piedra => :tijeras, :tijeras => :papel, :papel => :piedra}
end

it "Deberia de haber una lista de resultados de un juego desde el punto de vista de la maquina" do
@ppt_obj.resultados.should == [:gana, :pierde, :empata]
end

it "Debe existir un resultado para un juego, desde el punto de vista de la maquina" do
@ppt_obj.resultado.should == :pierde
end

it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida" do
@ppt_obj.obtener_humano('piedra').should == :piedra
end

it "Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina y que esta sea valida" do
@ppt_obj.obtener_maquina.should == @ppt_obj.maquina
end

it "Se debe invocar al metodo jugar() para determinar el ganador de la tirada" do
@ppt_obj.jugar.should == @ppt_obj.resultado
end

it "Se debe de comprobar que las tiradas de la maquina al ser aleatorias recorren las tres posibilidades" do
score=[]
30.times do
score.push@ppt_obj.obtener_maquina
end
score.uniq.length.should == @ppt_obj.tiradas.length
end

end

