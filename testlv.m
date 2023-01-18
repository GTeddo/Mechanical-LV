%%RV
Rx1 = 5;
Rx2 = 6;
jenrv = 8;
jeprv = 9;
[theta1,phi1] = ndgrid(linspace(0,pi,100),linspace(-pi,0,100));
xrv = (Rx1+((Rx2-Rx1).*(j-jenrv)/(jeprv-jenrv))).*sin(theta1).*cos(phi1);
yrv = c.*sinh(j).*sin(theta1).*sin(phi1);
zrv = cosh(j).*cos(theta1);
surf(xrv,yrv,zrv);
xrvin = (Rx1+((Rx2-Rx1).*(j-jenrv)/(jenrv-jeprvj))).*sin(theta1).*cos(phi1);
yrvin = c.*sinh(j).*sin(theta1).*sin(phi1);
zrvin = cosh(j).*cos(theta1);
surf(xrv,yrv,zrv);
hold
surf(xrvin,yrvin,zrvin);
V111 = xrv(:);
V222 = yrv(:);
V333 = zrv(:);
vv2 = [V111 V222 V333];
fed = vv2(5000:10000,:);
dlmwrite('Epi_1500_RV.txt',fed,'delimiter','\t','precision',5);