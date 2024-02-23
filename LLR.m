function y = LLR(r,sigma2)
% temp=zeros(1,length(r));
% for i=1:1:length(r)
%     y=r(i);
%     W=1/(1+exp(-2*y/sigma2));
%     if(W==0)
%         temp(i)=log((1-(W+exp(-35)))/(W+exp(-35)));
%     elseif(W==1)
%         temp(i)=log((1-(W-exp(-35)))/(W-exp(-35)));
%     else
%         temp(i)=log((1-W)/W);
%     end
% end
% y=temp;
y = -2.*r./sigma2;
end
