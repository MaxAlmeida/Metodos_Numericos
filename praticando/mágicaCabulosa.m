%magica 01 realiza a magica do n�o-m�gico!

display('Pense um n�mero inteiro de 1 at� 10 e clique em alguma tecla');
pause;

acertou =0;
chutes = randperm(10); %Gera um vetor com valores embaralhados de 1 a 10

for i=1:10
    resposta = menu(['foi o n�mero',num2str(chutes(i)),'?'],'Sim','N�o');
    
    if(resposta ==1)
        display('Viu como sou um bom m�gico?');
        pause(1);
        display('Agora vou limpar a tela de comandos...');
        pause(4);
        display('Um abra�o e at� a pr�xima!');
        pause(0.5);
        clc;
        acertou = 1;
        break;
    end
end
if acertou ==0
    display('parece que voc� escolheu um valor fora do intervlalo, n�o?');
end