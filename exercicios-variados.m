%% MatLab exercícios
% 

clear,clc %limpar variáveis e histórico 
%% 1 Gere uma sequência de números pares com início em 4 e a terminar no número 100.

4:2:100
%% 2 Gere uma sequência numérica decrescente com início em 5 e a terminar em -5.

5:-1:-5
%% 3 Gere uma sequência numérica com 100 elementos pertencentes ao intervalo [0 ... 1].

linspace(0,1,100)
%% 4 Considere uma matriz A com 20 linhas e 30 colunas. Construa um comando que permita extrair para uma matriz B uma sub-matriz de A constituída pelas linhas de 10 a 15 e as colunas de 9 a 12.

A = round(rand(20,30)*10)
B=A(10:15,9:12)
%% 5 Gere uma sequência de números múltiplos de 3 compreendidos entre 100 e 132, dispostos num vector por ordem decrescente.

132:-3:100
%% 6 Gere uma sequência a começar em π e a acabar em −π com um passo de −π/15.

pi:-pi/15:-pi
%% 7 Calcule o seno, o coseno, a tangente, a raíz quadrada e a raíz cúbica de π/2

a = pi/2;
sin(a), cos(a), tan(a), sqrt(a), a^(1/3)
%% 8 Calcule o logaritmo e a raíz quadrada de -1.

log10(sqrt(-1))
%% 9 Calcule o valor da função e^x em 100 pontos do intervalo [−1 ... 1].

x=linspace(-1,1,100);
exp(x)
%% 10 Calcule o valor da função sin(x + pi/10) ∗ cos(x) em 100 pontos do intevalo [−π...π].

x=x*pi;
sin(x + pi/10).*cos(x)
%% 11 Calcule o produto dos polinómios x6 + 10 e x2 − 2x + 3.

p1= [1 0 0 0 0 0 10];
p2= [1 -2 3];
conv(p1,p2)
%% 12 Obtenha o polinómio cujas raízes são os números inteiros 1, 2 e 3

r=[1 2 3];
poly(r)
%% 13 Calcule os zeros do seguinte polinómio p(x) = x3 + 4x2 − 3x + 1. Calcule o valor do polinómio em 100 pontos da forma x = ejω com ω ∈ [0 ... 2π].

p = [1 4 -3 1];
roots(p)
w=linspace(0,2*pi,100);
x=exp(j*w);
x.^3 + 4.*x.^2-3.*x + 1
%% 14 Calcule o valor do módulo do quociente 1 x3+1 em 100 pontos da forma x = (−2)w com w ∈ [0 ... 3].

w = linspace(0,3,100);
x=(-2).^w;
1./(x.^3+1)
%% 15 Crie uma matriz 3 × 3 em que todos os elementos são iguais a 3.

ones(3)*3
%% 16 Crie um vector coluna com 100 elementos aleatórios com uma distribuição uniforme.

sort(round(10*rand(100,1)))
%% 17 Crie uma matriz 4 × 4 em que todos os elementos são iguais a 1 + j2.  

ones(4).*(1+j*2)
%% 18 Com a função eye crie uma matriz diagonal 4 × 4 em que todos os elementos da diagonal são iguais a 3

eye(4)*3
%% 19 Construa um vector com 128 elementos com a sequinte sequência: [0 1 0 −1 0 1 ··· 0 −1]

x = 0:1:127;
round(sin((pi/2)*x))
%% 20 Crie uma matriz com dimensão 4 × 4 em que cada coluna seja o vector v = [1, 2, 3, 4].

v = [1, 2, 3, 4];
A=ones(4).*v;
A=rot90(A,-1)
clear,clc %% limpar variáveis e histórico novamente
%% 21 Forme a matriz quadrada com dimensão 6 × 6 constituída por quatro blocos em que os elementos de cada bloco sejam "um” ou zero, tal como é ilustrado na seguinte matriz:
% 

[ones(4) zeros(4); zeros(4) ones(4)]
%% 22 Gere uma matriz com dimensão 8×8 constituída por números aleatórios obtidos com a função randn, e obtenha uma sub-matriz constituída pelas colunas de índice ímpar utilizando a técnica de remoção de colunas.

A=randn(8)
A(:,[2:2:8])=[]
%% 23 Resolva o exercício anterior utilizando uma solução sem "[]”.

A=randn(8)
A=A(:,[1:2:8])
%% 24 Gere um vector com todos os números inteiros de 1 a 101 e elinine os elementos pares.

v=1:1:101;
v(2:2:101)=[]
%% 25 Faça o plot da função seno para dois períodos.

x=0:pi/100:2*pi;
plot(x,sin(2.*x))
xlim([0.00 6.28])
ylim([-1.00 1.00])
%% 26 Compare o gráfico da função seno com o da função coseno para ângulos entre 0 e 2π e um passo de pi/150. O seno deve ser representado por círculos azuis e o coseno por uma linha verde a cheio.

w=0:pi/150:2*pi;
x1= sin(w);
x2= cos(w);
plot(w,x1,'b--o',w,x2,'g')
legend('sin','cos')
%% 27 Desenhe o gráfico da função sin (θ) /θ com θ a variar de −2π a 2π e passos de π/10.

x = -2*pi:pi/10:2*pi;
y= sin(x)./x;
plot(x,y)
xlim([-7.9 8.1])
ylim([-0.32 1.08])
%% 28 Visualize o gráfico da função e−x para 100 valores de x ∈ [0 ... 5].

x = linspace(0,5,100);
y= exp(x);
plot(x,y)
%% 29 Visualize o gráfico da função e−x para 100 valores de x ∈ [0 ... 5].

y= exp(-x);
plot(x,y)
%% 30 Visualize o gráfico da função loge x para valores de x ∈ [1 ... 5].

y= log(x);
plot(x,y)
%% 31 Construa uma matriz X em que a primeira coluna é constituída com 100 valores da função ex e a segunda coluna por 100 valores da função loge x para o intervalo x ∈ [1 ... 2]. Execute o comando plot(X).

x=linspace(1,2,100);
X=[exp(x);log(x)];
plot(X)
%% 32 Determine graficamente uma solução aproximada da equação loge x = e−x. Utilize para a análise o intervalo [0.5 ... 2].

x=linspace(0.5,2,100);
X1=exp(-x);
X2=log(x);
plot(x,X1,x,X2)

ax = gca;
chart = ax.Children(1);
datatip(chart,1.303,0.2647);
%% 33 Desenhe no mesmo gráfico a função eαx em que a variável α toma os seguintes valores α ∈ [1, 1.1, 1.2, 1.3, 1.4, 1.5] e a variável x ∈ [0.1 ... 1].

x=0:0.1:1;
alpha = [1, 1.1, 1.2, 1.3, 1.4, 1.5];

for k=1:length(alpha)
y= exp(alpha(k).*x);
plot(x,y)
hold on
end
hold off
%% 34 Visualize o gráfico da função log10 x utilizando uma escala logarítmica para o eixo horizontal. Utilize 100 pontos na gama [10^−5 : 10^5].

x=linspace(1e-5,1e5,100);
y=log10(x);
plot(log10(x),y)
%% 35 Visualize em gráfico a parte real e a parte imaginária da função e^jω, para valores de ω ∈ [0 ... 2π] e passo de π/10.

w = 0:pi/10:2*pi;
plot(exp(j*w),'-o')
%% 36 Execute a sequência anterior de comandos e guarde as variáveis A e b em formato ASCII para um ficheiro com o nome teste.txt. Edite o conteúdo desse ficheiro com o Notepad. Repita a operação para o ficheiro gerado com save ficheiro A b.

A = rand(2);
b = rand(1,3);
save teste A b
clear A b
load teste
save teste.txt A b -ascii
load teste -mat A

%% 37 Após ter criado as variáveis A e b tal como é indicado no texto, execute o comando whos e compare a memória ocupada por cada uma delas. Visualize a variável b nos seguintes formatos numéricos: long, short e e long e. Finalmente, apague as variáveis e verifique com o comando whos.

whos
int8(b), double(b)
clear A b
%% 38 Construa um vector linha x constituído pelos números inteiros pares pertencentes ao intervalo [1 ... 8]. Calcule os valores próprios da matriz resultante do produto xT x.

x= 2:2:8;
eig(x'*x)
%% 39 Resolva o seguinte sistema de equações com o Matlab

A=[1 2 -1;2 -7 0;-1 0 2];
b=[10 -1 0];
b=rot90(b,-1);
inv(A)*b
clear, clc % limpar variáveis e histórico novamente
%% 40 Considere o seguinte sistema de equações

A=[1 2 -1;2 4 -2;-1 0 2];
b=[0 2 1];
b=rot90(b,-1);
inv(A)*b
%% 41 Verifique que fazendo o produto matricial entre um vector coluna v e um vector linha preenchido com um número n de uns, se obtém uma matriz com n colunas iguais a v

u=ones(1,10);
v=ones(10,1);
v*u
%% 42

A=rand(4)+1
eig(A)
A.^20
(A/20)^20
%% 43 Crie uma matriz com três colunas e coloque em cada uma delas as seguintes funções: sin(x), cos(x) e sin(x)*cos(x). O argumento x deverá ser um vector a começar em 0 e a acabar em 2 × π, com um passo de π/100

x=0:pi/100:2*pi;
A=[sin(x);cos(x);sin(x).*cos(x)];
A=rot90(A,-1)
%% 44 Desenhe o gráfico da função sin ¡ x2¢ utilizando o mesmo argumento que no exercício anterior.

plot(A(:,1))
%% 45 A função abs dá como resultado o módulo de um número complexo e a função angle o seu argumento. Construa um gráfico do módulo e argumento da seguinte função y (ω) = ω × ejω em que ω varia de 0 a 8π com passos de π/40. Desenhe igualmente um gráfico da parte real versus a parte imaginária.

w=0:pi/40:8*pi;
y=w.*exp(j.*w)

plot(angle(y),abs(y))
plot(imag(y),real(y))
%% 46 Gere um vector com um milhão de amostras obtidas com a função rand. Calcule a sua média, desvio padrão e visualize o seu histograma com 100 classes.

v=rand(1,1000000);
mean(v)
std(v)
hist(v,100)
%% 47 Gere agora um vector com um milhão de amostras com a função randn. Calcule a sua média, desvio padrão e visualize o seu histograma com 100 classes. Quais as diferenças em relação ao exemplo anterior?

v=randn(1,1000000);
mean(v)
std(v)
hist(v,100)
%% 
% Observa-se uma distribuição com decaimento exponecial
%% 48 Gere uma sequência com 100 elementos iguais à unidade e calcule a sua média e desvio padrão.

x=ones(1,100);
mean(x)
std(x)
%% 49 Gere a sequência {1, 2, 3,..., 9, 10} e extraia os números maiores que 4.

x=1:1:10;
find(x>4)
%% 50 Gere uma sequência aleatória com distribuição normal e elimine os elementos negativos.

x=randn(1,10)
x(x<0)=[]
%% 51 Gere uma sequência aleatória com distribuição normal e calcule o número de elementosnegativos.

x=randn(1,10)
c=(x<0);
n=mean(c)*length(x)
%% 52 Gere um sinal aleatório com distribuição uniforme e com 1000 amostras. Obtenha o número de amostras com uma amplitude superior a 0.9. Calcule em seguida o número de amostras cujo módulo possui uma amplitude entre 0.5 e 0.7.

x = sort(rand(1,1000));
x(x>0.9)

c=(0.5<x<0.7);
n=mean(c)*length(x)
%% 53 Gere um vector x com 1000 elementos utilizando a função rand. Extraia para um outro vector todos os elementos de x menores que 0.3. Utilize as instruções for e if.

x=rand(1,1000);
a=1;
for k=1:length(x)
    if x(k)<0.3
        m(a)=x(k);
        a=a+1;
    end
end
disp(m)
%% 54

x=linspace(0,2,100);
n=1:1:10;
alpha=1+0.1*n;
A=ones(100,10);

for k=1:length(alpha)
y= exp(alpha(k).*x);
A(:,k)=y;
end

mesh(A)
%% 55 A expansão em série de Taylor

x=linspace(0,2*pi,100);
y1=sin(x);
n=[1 3 5 7 9];

y2 = x - (x.^3)./factorial(3)+(x.^5)./factorial(5)-(x.^7)./factorial(7)+(x.^9)./factorial(9)-(x.^11)./factorial(11);

plot(x,y1,x,y2)
%% 56 Usando a instrução for, construa uma matriz de 10 × 10 em que cada coluna é um vector v cujos elementos são os números inteiros de 1 a 101 .

A=ones(10);

for k1=1:10
    
for k2=1:10
    A(k2,k1)=k2;
end

end
disp(A)

%% 57 Gere um vector com 32000 elementos utilizando a função randn. Ouça o sinal criado utilizando uma frequência de amostragem de 32000Hz.

fs= 32000; % Frequência de amostragem
x= randn(1,32000);
sound(x,fs);
%% 58 Gere a sinusóide de 1000Hz do exemplo dado e ouça-a com a frequência de amostragem de 8000Hz. Reproduza agora a sinusóide com as seguintes frequências de amostragem: 4000, 16000, 44100.

fs= [8000 4000 16000 44100];
for k=1:4
Ts= 1/fs(k);
t= 0:Ts:1;
x= sin(2*pi*1000*t);
sound(x,fs(k));
pause(2)
end
%% 59 Gere um sinal constituído por 5000 elementos 1 e -1 dispostos alternadamente. Reproduza esse sinal com a função sound utilizando uma frequência de amostragem de 8000Hz.

x=1:1:5000
y= sin((pi/2)*x);
sound(y,8000);
%% 60 Obtenha uma matriz com 50 colunas em que cada coluna contém um período da função seno amostrada em 50 pontos.

A=ones(50);
w=0:pi/24.5:2*pi;
x1= sin(w);

for k1=1:50
    
for k2=1:50
    A(k2,k1)=x1(k2);
end

end
disp(A)
%% 61 Gere uma sequência com 10000 valores aleatórios com distribuição uniforme e guarde num vector apenas os que possuem amplitude superior a 0.9. Coloque noutro vector os índices das amostras anteriores.

clear m n
x=rand(1,1000);
a=1;
for k=1:length(x)
    if x(k)>0.9
        m(a)=x(k);
        a=a+1;
    end
end
a=1;
for k=1:length(x)
    if x(k)<=0.9
        n(a)=x(k);
        a=a+1;
    end
end
disp(m)
disp(n)
%% 62 Obtenha o gráfico da função sin(x)/x variando o argumento entre -100 e 100 com passos de 0.1.

x = -100:0.1:100;
y= sin(x)./x;
plot(x,y)