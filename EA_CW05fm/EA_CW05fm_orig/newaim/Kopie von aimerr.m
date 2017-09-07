function e = aimerr(c);

% e = aimerr(c);
%
% Interpret the return codes generated by the aim routines.

% The return code c = 2 is used by aim_schur.m but not by aim_eig.m.

    if(c==1)  e='Aim: unique solution.';
elseif(c==2)  e='Aim: roots not correctly computed by real_schur.';
elseif(c==3)  e='Aim: too many big roots.';
elseif(c==35) e='Aim: too many big roots, and q(:,right) is singular.';
elseif(c==4)  e='Aim: too few big roots.';
elseif(c==45) e='Aim: too few big roots, and q(:,right) is singular.';
elseif(c==5)  e='Aim: q(:,right) is singular.';
elseif(c==61) e='Aim: too many exact shiftrights.';
elseif(c==62) e='Aim: too many numeric shiftrights.';
else          e='Aimerr: return code not properly specified';
end

return
