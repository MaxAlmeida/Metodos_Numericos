%magica 01 realiza a magica do não-mágico!

display('Pense um número inteiro de 1 até 10 e clique em alguma tecla');
pause;

acertou =0;
chutes = randperm(10); %Gera um vetor com valores embaralhados de 1 a 10

for i=1:10
    resposta = menu(['foi o número',num2str(chutes(i)),'?'],'Sim','Não');
    
    if(resposta ==1)
        display('Viu como sou um bom mágico?');
        pause(1);
        display('Agora vou limpar a tela de comandos...');
        pause(4);
        display('Um abraço e até a próxima!');
        pause(0.5);
        clc;
        acertou = 1;
        break;
    end
end
if acertou ==0
    display('parece que você escolheu um valor fora do intervlalo, não?');
end