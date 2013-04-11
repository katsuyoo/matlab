% 1. Monte Carlo (random search) metodo realizacija
% 2. Sugeneruojame 100 atsitiktiniu tasku intervale [-10;10]
% 3. Surandame, kuriame funkcija igija didziausia (maziausia) reiksme
%rand(100,1)
a1=-10;%pradine sritis
b1=10;%pradine sritis
n=2;
k1=50; % Tasku (vektoriu) skaicius
% x = a + (b-a) * rand[100,1])
x1=a1 + (b1-a1).* rand(50,2); %padaryti, kad generuotu dvimacius vektorius
f1=[];
for i=1:50
f1(i)=sincos2(x1(i,:));
end
[fMin1,indMin1]= min(f1); % lyg ir nieko nereikia keisti
[fMax1,indMax1]= max(f1); % lyg ir nieko nereikia keisti
xMin1=x1(indMin1,:);% pritaikyti dvimaciui atvejui
xMax1=x1(indMax1,:);% pritaikyti dvimaciui atvejui
fprintf('Surastas min = %6.4f, taske x = (%6.4f,%6.4f) \n', fMin1, xMin1(1), xMin1(2))
fprintf('Surastas max = %6.4f, taske x = (%6.4f,%6.4f) \n', fMax1, xMax1(1), xMax1(2))
hold on;
scatter(x1(:,1),x1(:,2),'b.');
scatter(xMin1(1),xMin1(2),'r.');
text(xMin1(1)+0.3,xMin1(2),num2str(fMin1));
rectangle('Position',[-10.0,-10.0,20.0,20.0],...
    'LineWidth',5,'Linestyle','--')
%grafikas1;
%Kitus 50 bndymus atliekame mazintoje srityje


a2=xMin1(1)-1;  % a2 <= x(1) <= b2
b2=xMin1(1)+1;
a3=xMin1(2)-1;  % a3 <= x(2) <= b3
b3=xMin1(2)+1;
n=2;
k2=50; % Tasku (vektoriu) skaicius
% x = a + (b-a) * rand[100,1])
x2(:,1)=a2 + (b2-a2).* rand(50,1); %padaryti, kad generuotu dvimacius vektorius. x2_1
x2(:,2)=a3 + (b3-a3).* rand(50,1);% x2_2
f2=[];
for i=1:50
f2(i)=sincos2(x2(i,:));
end
[fMin2,indMin2]= min(f2); % lyg ir nieko nereikia keisti
[fMax2,indMax2]= max(f2); % lyg ir nieko nereikia keisti
xMin2=x2(indMin2,:);% pritaikyti dvimaciui atvejui
xMax2=x2(indMax2,:);% pritaikyti dvimaciui atvejui
fprintf('Surastas min = %6.4f, taske x = (%6.4f,%6.4f) \n', fMin2, xMin2(1), xMin2(2))
fprintf('Surastas max = %6.4f, taske x = (%6.4f,%6.4f) \n', fMax2, xMax2(1), xMax2(2))
hold on;
scatter(x2(:,1),x2(:,2),'b.');
scatter(xMin2(1),xMin2(2),'y*');
text(xMin2(1)+0.3,xMin2(2),num2str(fMin2));
rectangle('Position',[a2,a3,2.0,2.0],...
    'LineWidth',2,'Linestyle','--')
%grafikas2;

