


option optcr = 0.0001;
set
i /1*22/
j /1*3/;

table
c(i,j)
    1           2           3           
1   460833.6    449327.2    517772.8
2   45674.6     434546.7    500740.8
3   606360      591220      681280
4   363816      354732      408768
5   351688.8    342907.6    395142.4
6   403229.4    393161.3    453051.2
7   354114.24   345272.48   397867.52
8   330466.2    322214.9    371297.6
9   194035.2    189190.4    218009.6
10  506310.6    493668.7    568868.8
11  365028.72   355914.44   410130.56
12  303180      295610      340640
13  248607.6    242400.2    279324.8
14  272862      266049      306576
15  309243.6    301522.2    347452.8
16  309243.6    301522.2    347452.8
17  248607.6    242400.2    279324.8
18  315307.2    307434.4    354265.6
19  400197.6    390205.2    449644.8
20  454770      443415      510960
21  360784.2    351775.9    405361.6
22  445674.6    434546.7    500740.8;

Parameter
Cpacidad(i)/
1   4.2
2   7.1
3   3.9
4   8.45
5   9.31
6   15
7   4.39
8   10.96
9   29.06
10  6.1
11  4.39
12  7.12
13  24.28
14  8.45
15  10.82
16  10.82
17  24.15
18  11.03
19  6.7
20  7.14
21  11.5
22  7.1/;

Parameter
Volumen(j)/
1   11.17954628
2   14.5918835 
3   10.22812135/;

Parameter
Distancia(j)/
1   30318
2   29561
3   34064/;

Parameter
Tiempo(j)/
1   3647
2   3979
3   3449/;

Variable
z;
Binary Variables
x(i,j);

Equations
obj
r1
r2
r3;

obj.. z=e=sum((i,j),(23*c(i,j)*x(i,j)+34.46)*184.58);
*tiene que ser menor e igual a 1 en columna debido a que un trabjao no va a estar asignado por no ser matriz cuadrada
r1(j).. sum(i,x(i,j)) =l= 1;
r2(i).. sum(j,x(i,j)) =e= 1;
r3(i).. sum(j,x(i,j)*Volumen(j)) =l= Cpacidad(i);


model reto /all/;
solve reto using mip min z;
