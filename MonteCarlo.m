% 1. Monte Carlo (random search) metodo realizacija
% 2. Sugeneruojame 100 atsitiktiniu tasku intervale [-10;10]
% 3. Surandame, kuriame funkcija igija didziausia (maziausia) reiksme
%rand(100,1)
a=-10;
b=10;
% x = a + (b-a) * rand(100,1)
x=a + (b-a).* rand(100,1); %kiekveinai is koordinaciu atliekami veiksmai
f= sincos(x)
[fMin,indMin]= min(f) % kelintas x yra minimalus
[fMax,indMax]= max(f) % kelintas x yra mximalus
xMin=x(indMin)
xMax=x(indMax)
fprintf('Surastas min = %6.4f, taske x = %6.4f \n', fMin, xMin)
fprintf('Surastas max = %6.4f, taske x = %6.4f \n', fMax, xMax)
grafikas
