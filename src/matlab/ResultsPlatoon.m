figure(3);hold on; 
%use this for local and global 
% subplot(2,1,1),hold on, 
% plot(LongVel.Data,'LineWidth',2), 
% plot(LongVel1.Data,'LineWidth',2),
% plot(LongVel2.Data,'LineWidth',2),
% plot(LongVel3.Data,'LineWidth',2),
% plot(LongVel4.Data,'LineWidth',2),
% legend('Leader Longitudinal Velocity','Follower Long Velocity 1','Follower Long Velocity 2','Follower Long Velocity 3','Follower Long Velocity 4');

 
 %use this for hybrid control
 subplot(2,1,1),hold on, 
 plot(LongVel1.Data,'LineWidth',2),
 plot(LongVel2.Data,'LineWidth',2),
 plot(LongVel3.Data,'LineWidth',2),
 plot(LongVel4.Data,'LineWidth',2),
 legend('Follower Long Velocity 1','Follower Long Velocity 2','Follower Long Velocity 3','Follower Long Velocity 4'); 
 
 xlabel('Time-Samples', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'k') % x-axis label
 ylabel('Longitudinal Velocity (m/s)', 'FontSize', 12, 'FontWeight', 'bold','Color', 'k')% y-axis label
 GridStyle.LineStyle = '--';
 GridStyle.LineWidth = 2.5;
set(gca,'FontSize',12,'FontWeight','bold','XColor',[0 0 0],'YColor',...
    [0 0 0],'ZColor',[0 0 0]);
 
 
 subplot(2,1,2),hold on,
 plot(Delta.Data,'LineWidth',2),
 plot(Delta1.Data,'LineWidth',2),
 plot(Delta2.Data,'LineWidth',2),
 plot(Delta3.Data,'LineWidth',2),
 plot(Delta4.Data,'LineWidth',2),
 legend('Leader Delta Angle','Follower Delta Angle 1','Follower Delta Angle 2','Follower Delta Angle 3','Follower Delta Angle 4');
 legend('Leader Steering Angle','Follower Steering Angle 1','Follower Steering Angle 2','Follower Steering Angle 3','Follower Steering Angle 4');
xlabel('Time-Samples', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'k') % x-axis label
 ylabel('Steering Angle (rad/s)', 'FontSize', 12, 'FontWeight', 'bold','Color', 'k')% y-axis label
 GridStyle.LineStyle = '--';
 GridStyle.LineWidth = 2.5;
set(gca,'FontSize',12,'FontWeight','bold','XColor',[0 0 0],'YColor',...
    [0 0 0],'ZColor',[0 0 0]);
%print('figure_hybrid\PD_no_perturb_control','-dpng');


figure(4); hold on; 
  subplot(2,1,1), hold on,
  plot(LatErr.Data, 'LineWidth',2), 
  plot(LatErr1.Data,'LineWidth',2),
  plot(LatErr2.Data,'LineWidth',2),
  plot(LatErr3.Data,'LineWidth',2),
  plot(LatErr4.Data,'LineWidth',2),
  legend('Leader Lateral Deviation', 'Follower Lateral Deviation 1', 'Follower Lateral Deviation 2', 'Follower Lateral Deviation 3', 'Follower Lateral Deviation 4');
  xlabel('Time-Samples', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'k') % x-axis label
 ylabel('Lateral Deviation (m)', 'FontSize', 12, 'FontWeight', 'bold','Color', 'k')% y-axis label
 GridStyle.LineStyle = '--';
 GridStyle.LineWidth = 2.5;
set(gca,'FontSize',12,'FontWeight','bold','XColor',[0 0 0],'YColor',...
    [0 0 0],'ZColor',[0 0 0]);
  
  subplot(2,1,2),hold on,
  plot(AngErr.Data,'LineWidth',2), % for local, global
  %plot(AngErr.Data(:,:,3),'LineWidth',2), for hybrid
  plot(AngErr1.Data,'LineWidth',2),
  plot(AngErr2.Data,'LineWidth',2),
  plot(AngErr3.Data,'LineWidth',2),
  plot(AngErr4.Data,'LineWidth',2),
  legend('Leader Angular Deviation','Follower Angular Deviation 1','Follower Angular Deviation 2','Follower Angular Deviation 3','Follower Angular Deviation 4');
  xlabel('Time-Samples', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'k') % x-axis label
 ylabel('Angular Deviation (m)', 'FontSize', 12, 'FontWeight', 'bold','Color', 'k')% y-axis label
 GridStyle.LineStyle = '--';
 GridStyle.LineWidth = 2.5;
set(gca,'FontSize',12,'FontWeight','bold','XColor',[0 0 0],'YColor',...
    [0 0 0],'ZColor',[0 0 0]);
%print('figure_hybrid\PD_no_perturb_error','-dpng');
%   figure(4); hold on; 
%   subplot(2,1,1), plot(LatErr.Data),hold on, plot(LatErr1.Data),legend('Leader Lateral Deviation', 'Follower Lateral Deviation');
%   subplot(2,1,2), plot(AngErr.Data),hold on, plot(AngErr1.Data),legend('Leader Angular Deviation','Follower Angular Deviation');

figure(5);hold on; 
plot(x,y, 'g.'); 
plot(Pose.Data(:,1),Pose.Data(:,2), 'rx');
plot(Pose1.Data(:,1),Pose1.Data(:,2), 'm+');
plot(Pose2.Data(:,1),Pose2.Data(:,2), 'b-');
plot(Pose3.Data(:,1),Pose3.Data(:,2), 'co');
plot(Pose4.Data(:,1),Pose4.Data(:,2), 'k*');
legend('Reference Path','Leader Path','Follower 1 Path','Follower 2 Path','Follower 3 Path','Follower 4 Path');
xlabel('Position (metres)', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'k') % x-axis label
 ylabel('Position (metres)', 'FontSize', 12, 'FontWeight', 'bold','Color', 'k')% y-axis label
 GridStyle.LineStyle = '--';
 GridStyle.LineWidth = 2.5;
set(gca,'FontSize',12,'FontWeight','bold','XColor',[0 0 0],'YColor',...
[0 0 0],'ZColor',[0 0 0]);
%print('figure_hybrid\PD_no_perturb_path','-dpng');

figure(6); hold on; 
  plot(LongErr1.Data,'LineWidth',2),
  plot(LongErr2.Data,'LineWidth',2),
  plot(LongErr3.Data,'LineWidth',2),
  plot(LongErr4.Data,'LineWidth',2),
  legend('Longitudinal Error 1','Longitudinal Error 2','Longitudinal Error 3','Longitudinal Error 4');
  xlabel('Time-Samples', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'k') % x-axis label
 ylabel('Longitudianl Deviation (m)', 'FontSize', 12, 'FontWeight', 'bold','Color', 'k')% y-axis label
 GridStyle.LineStyle = '--';
 GridStyle.LineWidth = 2.5;
set(gca,'FontSize',12,'FontWeight','bold','XColor',[0 0 0],'YColor',...
    [0 0 0],'ZColor',[0 0 0]);
%print('figure_hybrid\PD_no_perturb_long_error','-dpng');
% figure(7); hold on; 
%   plot(LongErr1.Data,'LineWidth',2),
%   plot(LongErrLeader1.Data,'LineWidth',2),
%   plot(LongErrLeader2.Data,'LineWidth',2),
%   plot(LongErrLeader3.Data,'LineWidth',2),
%   legend('Longitudinal Error 1','Longitudinal Error 2','Longitudinal Error 3','Longitudinal Error 4');
%   xlabel('Time-Samples', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'k') % x-axis label
%  ylabel('Longitudianl Deviation (m)', 'FontSize', 12, 'FontWeight', 'bold','Color', 'k')% y-axis label
%  GridStyle.LineStyle = '--';
%  GridStyle.LineWidth = 2.5;
% set(gca,'FontSize',12,'FontWeight','bold','XColor',[0 0 0],'YColor',...
%     [0 0 0],'ZColor',[0 0 0]);


%%comment this for local and global
% figure(8); hold on; 
%   plot(sigma1.Data,'LineWidth',2),
%   plot(sigma2.Data,'LineWidth',2),
%   plot(sigma3.Data,'LineWidth',2),
%   plot(sigma4.Data,'LineWidth',2),
%   legend('Sigma 1','Sigma 2','Sigma 3','Sigma1 4');
%   xlabel('Time-Samples', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'k') % x-axis label
%  ylabel('Longitudianl Deviation (m)', 'FontSize', 12, 'FontWeight', 'bold','Color', 'k')% y-axis label
%  GridStyle.LineStyle = '--';
%  GridStyle.LineWidth = 2.5;
% set(gca,'FontSize',12,'FontWeight','bold','XColor',[0 0 0],'YColor',...
%     [0 0 0],'ZColor',[0 0 0]);
