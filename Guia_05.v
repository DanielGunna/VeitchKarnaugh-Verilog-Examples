//                                    .___________________________________________________.
//                                    | Pontif�cia Universidade Cat�lica de Minas Gerais  |
//                                    |   Instituto de Ci�ncia  Exatas e Inform�tica      |
//                                    |                    ICEI                           |
//    			                      |---------------------------------------------------|
//                                    |Curso :   | Ci�ncia da Computa��o  -  2/2014       |
//                                    |---------------------------------------------------|
//                                    |Aluno:    |Daniel Gunna Santana da Silva Souza     | 
//                                    |---------------------------------------------------|
//                                    |Matricula:|510348                                  |
//                                    |---------------------------------------------------|
//                                    |Mat�ria:  | AC I - Arquitetura de Computadores I   | 
//                                    |---------------------------------------------------|
//                                    |Atividade:|Guia_05                                 |
//                                    *---------------------------------------------------*|



//Exercicio 01
//    ___
//a)x.y+z
//._________________________________
//| n | x y z |y'|z'| x.y'|(x.y')+z'|
//|---------------------------------|
//| 0 | 0 0 0 |1 |1 |  0  |    1    |
//| 1 | 0 0 1 |1 |0 |  0  |    0    |
//| 2 | 0 1 0 |0 |1 |  0  |    1    |
//| 3 | 0 1 1 |0 |0 |  0  |    0    |
//| 4 | 1 0 0 |1 |1 |  1  |    1    |
//| 5 | 1 0 1 |1 |0 |  1  |    1    |
//| 6 | 1 1 0 |0 |1 |  0  |    1    |
//| 7 | 1 1 1 |0 |0 |  0  |    0    |      
//*---------------------------------*
//                     
//                     
//SoP(x,y,z) = x.y'+'z = E(0,2,4,5,6) =
// m0 + m2 + m4 + m5+ m6 =  (x'.y'.z')+(x'.y.z')+(x.y'.z')+(x.y'.z)+(x.y.z') 
//                       
//                      
//  

module Fa(output s , input p,q,r );

assign s = p & ~q|~r; 


endmodule


//
//   _ _
//b)(x+y).z
//._________________________________
//| n | x y z |x'|y'|x'+y'|(x'+y').z|
//|---------------------------------|
//| 0 | 0 0 0 |1 |1 |  1  |    0    |
//| 1 | 0 0 1 |1 |1 |  1  |    1    |
//| 2 | 0 1 0 |1 |0 |  1  |    0    |
//| 3 | 0 1 1 |1 |0 |  1  |    1    |
//| 4 | 1 0 0 |0 |1 |  1  |    0    |
//| 5 | 1 0 1 |0 |1 |  1  |    1    |
//| 6 | 1 1 0 |0 |0 |  0  |    0    |
//| 7 | 1 1 1 |0 |0 |  0  |    0    |      
//*---------------------------------*
//                     
//                     
//SoP(x,y,z) = (x'+y').z = E(1,3,5) =
// m1 + m3 + m5 =  (x'.y'.z)+(x'.y.z)+(x.y'.z)
//                       
//                      
//  

module Fb(output s , input p,q,r );

assign s = (~p|~q)&r; 


endmodule




//  ____
//c)(x+y).z
//.____________________________
//| n | x y z |~(x+y)|~(x+y).z|
//|---------------------------|
//| 0 | 0 0 0 |  1   |   0    |
//| 1 | 0 0 1 |  1   |   1    |
//| 2 | 0 1 0 |  0   |   0    |
//| 3 | 0 1 1 |  0   |   0    |
//| 4 | 1 0 0 |  0   |   0    |
//| 5 | 1 0 1 |  0   |   0    |
//| 6 | 1 1 0 |  0   |   0    |
//| 7 | 1 1 1 |  0   |   0    |      
//*---------------------------*
//                     
//                     
//SoP(x,y,z) = ~(x+y).z = E(1) =
// m1  =  (x'.y'.z)
//                       
//                      
// 


 

module Fc(output s , input p,q,r );

assign s = ~(p|q)&r; 


endmodule


//
//   ___  _
//d)(x+y).z
//._________________________________
//| n | x y z |z'|~(x+y)|~(x+y).z'|
//|-------------------------------|
//| 0 | 0 0 0 |1 |   1  |    1    |
//| 1 | 0 0 1 |0 |   1  |    0    |
//| 2 | 0 1 0 |1 |   0  |    0    |
//| 3 | 0 1 1 |0 |   0  |    0    |
//| 4 | 1 0 0 |1 |   0  |    0    |
//| 5 | 1 0 1 |0 |   0  |    0    |
//| 6 | 1 1 0 |1 |   0  |    0    |
//| 7 | 1 1 1 |0 |   0  |    0    |      
//*-------------------------------*
//                     
//                     
//SoP(x,y,z) = ~(x+y).z' = E(0) =
// m0 =  (x'.y'.z')
//                       
//                      
//  

module Fd(output s , input p,q,r );

assign s = ~(p|q)&~r; 


endmodule


//
//       _   _   _
//e)(y + x).(y + z)
//._______________________________________________
//| n | x y z |x'|y'|z'|y+x'|y'+z'|(y+x').(y'+z')|
//|----------------------------------------------|
//| 0 | 0 0 0 |1 |1 |1 | 1  |  1  |     1        |
//| 1 | 0 0 1 |1 |1 |0 | 1  |  1  |     1        |
//| 2 | 0 1 0 |1 |0 |1 | 1  |  1  |     1        |
//| 3 | 0 1 1 |1 |0 |0 | 1  |  0  |     0        |
//| 4 | 1 0 0 |0 |1 |1 | 0  |  1  |     0        |
//| 5 | 1 0 1 |0 |1 |0 | 0  |  1  |     0        |
//| 6 | 1 1 0 |0 |0 |1 | 1  |  1  |     1        |
//| 7 | 1 1 1 |0 |0 |0 | 1  |  0  |     0        |    
//*------------------------------------------------*
//                     
//                     
//SoP(x,y,z) = (y + x').(y'+ z')= E(0,1,2,6) =
//m0+ m1 + m2 + m6 =  (x'.y'.z')+(x'.y'.z)+(x'.y.z')+(x.y.z')
//                       
//

module Fe(output s , input p,q,r );

assign s = (q|~p)&(~q|~r); 


endmodule



/*module Exercicio_01;
reg x,y,z;
wire s1,s2,s3,s4,s5;

Fa  a1 (s1,x,y,z) ;
Fb  b1 (s2,x,y,z);
Fc  c1 (s3,x,y,z);
Fd  d1 (s4,x,y,z);
Fe  e1 (s5,x,y,z);

initial begin  : start

x = 1'bx;
y = 1'bx;
z = 1'bx;

end 

initial begin : main                 
$display("Exercicio 1 -\n \n \n\nLetra a: x.y'+z':\n");
$display("_________________\n| x | y | z | s |   ");
$monitor("|_%b_|_%b_|_%b_|_%b_| ",x,y,z,s1);

#1 x=0; y=0; z = 0;
#1 x=0; y=0; z = 1;
#1 x=0; y=1; z = 0;
#1 x=0; y=1; z = 1;
#1 x=1; y=0; z = 0;
#1 x=1; y=0; z = 1;
#1 x=1; y=1; z = 0;
#1 x=1; y=1; z = 1;



$display("\n \n \n\nLetra b: (x'+y').z:\n");
$display("_________________\n| x | y | z | s |   ");
$monitor("|_%b_|_%b_|_%b_|_%b_| ",x,y,z,s2);


#1 x=0; y=0; z = 0;
#1 x=0; y=0; z = 1;
#1 x=0; y=1; z = 0;
#1 x=0; y=1; z = 1;
#1 x=1; y=0; z = 0;
#1 x=1; y=0; z = 1;
#1 x=1; y=1; z = 0;
#1 x=1; y=1; z = 1;


$display("\n \n \n\nLetra c: ~(x+y).z:\n");
$display("_________________\n| x | y | z | s |   ");
$monitor("|_%b_|_%b_|_%b_|_%b_| ",x,y,z,s3);

#1 x=0; y=0; z = 0;
#1 x=0; y=0; z = 1;
#1 x=0; y=1; z = 0;
#1 x=0; y=1; z = 1;
#1 x=1; y=0; z = 0;
#1 x=1; y=0; z = 1;
#1 x=1; y=1; z = 0;
#1 x=1; y=1; z = 1;

$display("\n \n \n\nLetra d: ~(x+y).z':\n");
$display("_________________\n| x | y | z | s |   ");
$monitor("|_%b_|_%b_|_%b_|_%b_| ",x,y,z,s4);

#1 x=0; y=0; z = 0;
#1 x=0; y=0; z = 1;
#1 x=0; y=1; z = 0;
#1 x=0; y=1; z = 1;
#1 x=1; y=0; z = 0;
#1 x=1; y=0; z = 1;
#1 x=1; y=1; z = 0;
#1 x=1; y=1; z = 1;

$display("\n \n \n\nLetra e: (y+x').(y'+z'):\n");
$display("_________________\n| x | y | z | s |   ");
$monitor("|_%b_|_%b_|_%b_|_%b_| ",x,y,z,s5);

#1 x=0; y=0; z = 0;
#1 x=0; y=0; z = 1;
#1 x=0; y=1; z = 0;
#1 x=0; y=1; z = 1;
#1 x=1; y=0; z = 0;
#1 x=1; y=0; z = 1;
#1 x=1; y=1; z = 0;
#1 x=1; y=1; z = 1;


end

endmodule/*



//Exercicio - 02
//      ____
//a)x + x'.y 
//x + x.y' (Complementar : dupla-nega��o em x)
//x . y'   (Idepot�ncia : x + x = x ); 
//
//--------------------
//| n | x y |y'|x . y'|
//|-------------------|
//| 0 | 0 0 |1 |  0   |
//| 1 | 0 1 |0 |  0   |
//| 2 | 1 0 |1 |  1   |
//| 3 | 1 1 |0 |  0   |
//*-------------------*
// 
//SoP(x,y)= x . y' = E(2) = m2 = (x.y')
//
// 

module Fa2(output s , input x, y);

assign s = x&~y;

endmodule


module Exercicio_02;
reg x,y,z;
wire s1,s2,s3,s4,s5;

Fa2  a1 (s1, x, y) ;




initial begin  : start

x = 1'bx;
y = 1'bx;
z = 1'bx;

end 

initial begin : main                 
$display("Exercicio 2 -\n \n \n\nLetra a: x+~(x'.y'):\n");
$display("_________________\n| x | y | s |   ");
$monitor("|_%b_|_%b_|_%b_| ",x,y,s1);

#1 x=0; y=0; z = 0;
#1 x=0; y=0; z = 1;
#1 x=0; y=1; z = 0;
#1 x=0; y=1; z = 1;
#1 x=1; y=0; z = 0;
#1 x=1; y=0; z = 1;
#1 x=1; y=1; z = 0;
#1 x=1; y=1; z = 1;




end

endmodule
