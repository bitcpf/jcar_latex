% Plot different network size

clear all
bps=[20.6722   28.8570   32.4487   30.9917   36.2440   38.5286    35.2290   36.5101   42.1458];
cca=[12.7986   12.1555   13.0277   13.3417   15.3459   13.7339      14.4480 12.7717   10.9805];
bfsca=[15.0490   15.4397   15.3388   15.5503   15.6344   16.7049    17.9729   19.1912   19.3808];
gst=[15.5389   18.9452   16.1845   17.0160   20.7433   17.2230      19.7360   19.9253   24.3048];

upbound=load('dataout.txt');


close all
figure
%set(gcf,'Visible','off');

 %set(0,'DefaultAxesFontSize', 10)


hold on
 plot(upbound,'m^-')
plot(bps,'k*-','markers',10)
plot(gst,'+-','markers',10)
plot(bfsca,'ro-','markers',10)
plot(cca)


%set(gca,'FontSize',16)
 set(get(gca,'Children'),'linewidth',2);

xtk_label={'16','18','20','22','24','27','30','33','36'};
set(gca,'xticklabel',xtk_label,'FontSize',15);

%title('Max Network Throughput')
legend('ILP Bound','BPS(Alg. 2)','GST(Alg. 1)','BFS-CA[24]','CCA[23]','Location','NorthWest')
xlabel('Number of Mesh Nodes in Network')
set(get(gca,'XLabel'),'FontSize',17)
ylabel('Gateway Goodput (Mbps)')
set(get(gca,'YLabel'),'FontSize',17)

saveas(gca, 'varysize.eps','epsc');
