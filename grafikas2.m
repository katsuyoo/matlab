[x,y]=meshgrid(-10:.2:10);% padaryti, kad breztu dvimate funkcija: surf, mesh komandas naudoti
f=sin(x)+cos(y);
surf(x,y,f)