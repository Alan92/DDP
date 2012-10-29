require 'ppt'
describe Ppt do
before :each do
@ppt_obj=Ppt.new
end

it "Deberia de haber una tirada del humano" do
@ppt_obj.humano.should == 0
end

it "Deberia de haber una tirada de la maquina" do
@ppt_obj.maquina.should == 0
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





end

