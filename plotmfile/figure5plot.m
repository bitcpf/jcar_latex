close all

cb52=[11.2434   17.6544 24.3635   	24.6576  35.2244   	33.0152   	35.9594   38.1796   43.7192   52.4378]

cb49= [8.6738   	11.9639   	16.9162   	18.2486   25.5189   23.5268   28.8882   31.5924   37.9992   31.9578]


cb524=[11.2434  	23.1955   	27.3830   	32.0468   44.6450   51.4833   55.5839   55.2986   53.6232   55.1064]

all=[11.2434   	24.6991   	32.9882   	35.2290   53.1671   52.6482   56.4156 	58.4144   53.5585   55.4234];


figure
%set(gcf,'Visible','off');

hold on
plot(all,'k*-','markers',10)
plot(cb524,'ro-','markers',10)


plot(cb52)
plot(cb49,'+-','markers',10)




set(get(gca,'Children'),'linewidth',2);
axis([1, 10, 5, 60]);
 




set(gca,'FontSize',16)
%title('Max Network Throughput')
legend('WiFi(2)+WS(2)','WiFi(2)+WS(1)','WiFi(2) Only','WS(2) Only','Location','NorthWest')
xlabel('Maximum Offered Load Per Mesh Node (Mbps)')
set(get(gca,'XLabel'),'FontSize',16)
ylabel('Gateway Goodput (Mbps)')
set(get(gca,'YLabel'),'FontSize',16)
saveas(gca, 'wifiws.eps','epsc');
