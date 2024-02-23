function [layer_perm] = Generate_Perm(N,Listsize,generate_method)


% generate method:
% 0---random    1---cyclic shift   2---stable   3---other

n = log2(N);
layer_perm = zeros(Listsize,n);

Original = zeros(1,n);
for j = 1:n
    Original(j) = j;
end

switch generate_method
    case 0
       layer_perm(1,:) = Original;
       %layer_perm(1,:) = [5 6 7 4 1 2 3];
       for i = 2:Listsize
           %layer_perm(i,:) = Fisher_Yates(n);
           layer_perm(i,:) = randperm(n);
       end
       
    case 1
       if Listsize <= n
           for i = 1:Listsize
               layer_perm(i,:) = circshift(Original,i-1);
           end
       else
           for i = 1:n
               layer_perm(i,:) = circshift(Original,i-1);
           end
           for j = (n+1):Listsize
               layer_perm(j,:) = randperm(n);
           end
       end
       
    case 2
        P1 = perms([2 1]);
        P2 = perms([5 4 3]);
        P3 = perms([7 6]);
        
        Num1 = size(P1,1);
        Num2 = size(P2,1);
        Num3 = size(P3,1);
        
        TotalNum = Num1*Num2*Num3;
        stable_perm = zeros(TotalNum,n);
        for i = 1:Num1
            for j = 1:Num2
                for k = 1:Num3
                    index = (i-1)*Num2*Num3 + (j-1)*Num3 + k;
                    stable_perm(index,:) = [P1(i,:) P2(j,:) P3(k,:)];
                end
            end
        end
        
        if Listsize < TotalNum
            index_set = nchoosek(1:TotalNum,Listsize);
            T = randi(size(index_set,1),1,1);
            layer_perm(1,:) = Original;
            for i = 2:Listsize
                layer_perm(i,:) = stable_perm(index_set(T,i),:);
            end
        elseif Listsize == TotalNum
            layer_perm = stable_perm;
        end
                    
    case 3
        % [1 2 (3 4) (5 6) 7] ---- 5G/Beta
%         layer_perm = [1 2 3 4 5 6 7;
%                       1 2 3 4 6 5 7;
%                       1 2 4 3 5 6 7;
%                       1 2 4 3 6 5 7];
%         layer_perm = [1 2 3 4 5 6 7;
%                       1 2 3 5 4 6 7;
%                       1 3 2 4 5 6 7;
%                       1 3 2 5 4 6 7];

        % [1 2 (3 4) 5 (6 7)] ---- RM-4
%         layer_perm = [1 2 3 4 5 6 7;
%                       1 2 4 3 5 6 7;
%                       1 2 3 4 5 7 6;
%                       1 2 4 3 5 7 6];

        % [(1 2) (3 4 5) (6 7)] ---- RM-3
%         layer_perm = [1 2 3 4 5 6 7;
%                       1 2 4 5 3 7 6;
%                       2 1 5 3 4 7 6;
%                       2 1 5 4 3 7 6];
%           layer_perm = [1 2 3 4 5 6 7;
%                         2 1 5 4 3 7 6;
%                         2 1 3 4 5 7 6;
%                         1 2 5 4 3 6 7];
%         layer_perm = [1 2 3 4 5 6 7;
%                       2 1 4 5 3 7 6;
%                       1 2 3 5 4 7 6;
%                       2 1 5 4 3 6 7;
%                       1 2 4 3 5 7 6;
%                       1 2 5 3 4 6 7;
%                       2 1 3 5 4 6 7];
%         layer_perm = [1 2 3 4 5 6 7;
%                       1 2 4 5 3 6 7;
%                       1 2 5 3 4 6 7;
%                       1 2 5 4 3 6 7;
%                       2 1 3 4 5 7 6;
%                       2 1 4 5 3 7 6;
%                       2 1 5 3 4 7 6;
%                       2 1 5 4 3 7 6];

%       [1 (2 3) 4 5 (6 7) 8] ---- 256, New
        layer_perm = [1 2 3 4 5 6 7 8;
                      1 3 2 4 5 6 7 8;
                      1 2 3 4 5 7 6 8;
                      1 3 2 4 5 7 6 8];

%       [(1 2 3) 4 5 6 7]   ----- Doan's permutation ---- L = 6
%         layer_perm = [1 2 3 4 5 6 7;
%                       1 3 2 4 5 6 7;
%                       2 1 3 4 5 6 7;
%                       2 3 1 4 5 6 7;
%                       3 1 2 4 5 6 7;
%                       3 2 1 4 5 6 7];
%       [(1 2 3) 4 5 6 7 8]   ----- Doan's permutation ---- L = 6
%         layer_perm = [1 2 3 4 5 6 7 8;
%                       1 3 2 4 5 6 7 8;
%                       2 1 3 4 5 6 7 8;
%                       2 3 1 4 5 6 7 8;
%                       3 1 2 4 5 6 7 8;
%                       3 2 1 4 5 6 7 8];

end
            