function chaos(iter_fun,x0,r,n,c,u,d)   % �ú���û�з���ֵ��iter_fun�ǵ����������������x0�ǵ�����ֵ��
kr=0;                     
for cc=c(1):c(3):c(2)             % ������[r(1),r(2)]�ǲ����仯�ķ�Χ��r(3) �ǲ���
    kr=kr+1;
    y(kr,1)=feval(iter_fun,x0,r,cc,u,d);
    for i=2:n(2)			 %������n(2)�ǵ������еĳ��ȣ�����ͼʱǰn(1)������ֵ������
        y(kr,i)=feval(iter_fun,y(kr,i-1),r,cc,u,d);    
    end
end
plot([c(1):c(3):c(2)],y(:,n(1)+1:n(2)),'k.');  
