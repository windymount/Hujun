% This file is used to test dgs method
v1 = 20;
n = 64;
max_iteration = 25;

[f,g] = get_const(n);
[u,v,p,~,~] = initialize(n);
tic
while max_iteration
    max_iteration = max_iteration - 1;
    [u,v,p] = uni_dgs(u,v,p,f,g,v1);
  fprintf("error:%f\n",cal_error(u,v,p));
end % end while
toc

