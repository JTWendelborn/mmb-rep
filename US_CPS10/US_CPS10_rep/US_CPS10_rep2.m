%
% Status : main Dynare file 
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clear all
clear global
tic;
global M_ oo_ options_ ys0_ ex0_ estimation_info
options_ = [];
M_.fname = 'US_CPS10_rep2';
%
% Some global variables initialization
%
global_initialization;
diary off;
logname_ = 'US_CPS10_rep2.log';
if exist(logname_, 'file')
    delete(logname_)
end
diary(logname_)
M_.exo_names = 'Rs';
M_.exo_names_tex = 'Rs';
M_.exo_names = char(M_.exo_names, 'zs');
M_.exo_names_tex = char(M_.exo_names_tex, 'zs');
M_.exo_names = char(M_.exo_names, 'lambddaps');
M_.exo_names_tex = char(M_.exo_names_tex, 'lambddaps');
M_.exo_names = char(M_.exo_names, 'pits');
M_.exo_names_tex = char(M_.exo_names_tex, 'pits');
M_.exo_names = char(M_.exo_names, 'bs');
M_.exo_names_tex = char(M_.exo_names_tex, 'bs');
M_.endo_names = 'p';
M_.endo_names_tex = 'p';
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names = char(M_.endo_names, 'lambdda');
M_.endo_names_tex = char(M_.endo_names_tex, 'lambdda');
M_.endo_names = char(M_.endo_names, 'w');
M_.endo_names_tex = char(M_.endo_names_tex, 'w');
M_.endo_names = char(M_.endo_names, 'R');
M_.endo_names_tex = char(M_.endo_names_tex, 'R');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, 'z');
M_.endo_names = char(M_.endo_names, 'lambddap');
M_.endo_names_tex = char(M_.endo_names_tex, 'lambddap');
M_.endo_names = char(M_.endo_names, 'pit');
M_.endo_names_tex = char(M_.endo_names_tex, 'pit');
M_.endo_names = char(M_.endo_names, 'b');
M_.endo_names_tex = char(M_.endo_names_tex, 'b');
M_.endo_names = char(M_.endo_names, 'ystar');
M_.endo_names_tex = char(M_.endo_names_tex, 'ystar');
M_.endo_names = char(M_.endo_names, 'lambddastar');
M_.endo_names_tex = char(M_.endo_names_tex, 'lambddastar');
M_.endo_names = char(M_.endo_names, 'wstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'wstar');
M_.endo_names = char(M_.endo_names, 'Rstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'Rstar');
M_.endo_names = char(M_.endo_names, 'inflgap');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflgap');
M_.endo_names = char(M_.endo_names, 'realR');
M_.endo_names_tex = char(M_.endo_names_tex, 'realR');
M_.endo_names = char(M_.endo_names, 'outpgap');
M_.endo_names_tex = char(M_.endo_names_tex, 'outpgap');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_0_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_0\_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_0_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_0\_2');
M_.param_names = 'niu';
M_.param_names_tex = 'niu';
M_.param_names = char(M_.param_names, 'lambddapss');
M_.param_names_tex = char(M_.param_names_tex, 'lambddapss');
M_.param_names = char(M_.param_names, 'iotap');
M_.param_names_tex = char(M_.param_names_tex, 'iotap');
M_.param_names = char(M_.param_names, 'rhopit');
M_.param_names_tex = char(M_.param_names_tex, 'rhopit');
M_.param_names = char(M_.param_names, 'gamma100');
M_.param_names_tex = char(M_.param_names_tex, 'gamma100');
M_.param_names = char(M_.param_names, 'pss100');
M_.param_names_tex = char(M_.param_names_tex, 'pss100');
M_.param_names = char(M_.param_names, 'Fbeta');
M_.param_names_tex = char(M_.param_names_tex, 'Fbeta');
M_.param_names = char(M_.param_names, 'hparam');
M_.param_names_tex = char(M_.param_names_tex, 'hparam');
M_.param_names = char(M_.param_names, 'xip');
M_.param_names_tex = char(M_.param_names_tex, 'xip');
M_.param_names = char(M_.param_names, 'fp');
M_.param_names_tex = char(M_.param_names_tex, 'fp');
M_.param_names = char(M_.param_names, 'fy');
M_.param_names_tex = char(M_.param_names_tex, 'fy');
M_.param_names = char(M_.param_names, 'rhoR');
M_.param_names_tex = char(M_.param_names_tex, 'rhoR');
M_.param_names = char(M_.param_names, 'rhoz');
M_.param_names_tex = char(M_.param_names_tex, 'rhoz');
M_.param_names = char(M_.param_names, 'rholambddap');
M_.param_names_tex = char(M_.param_names_tex, 'rholambddap');
M_.param_names = char(M_.param_names, 'rhob');
M_.param_names_tex = char(M_.param_names_tex, 'rhob');
M_.param_names = char(M_.param_names, 'sdr');
M_.param_names_tex = char(M_.param_names_tex, 'sdr');
M_.param_names = char(M_.param_names, 'sdz');
M_.param_names_tex = char(M_.param_names_tex, 'sdz');
M_.param_names = char(M_.param_names, 'sdlambddap');
M_.param_names_tex = char(M_.param_names_tex, 'sdlambddap');
M_.param_names = char(M_.param_names, 'sdpit');
M_.param_names_tex = char(M_.param_names_tex, 'sdpit');
M_.param_names = char(M_.param_names, 'sdb');
M_.param_names_tex = char(M_.param_names_tex, 'sdb');
M_.param_names = char(M_.param_names, 'gamma');
M_.param_names_tex = char(M_.param_names_tex, 'gamma');
M_.param_names = char(M_.param_names, 'betta');
M_.param_names_tex = char(M_.param_names_tex, 'betta');
M_.param_names = char(M_.param_names, 'rss');
M_.param_names_tex = char(M_.param_names_tex, 'rss');
M_.param_names = char(M_.param_names, 'rss100');
M_.param_names_tex = char(M_.param_names_tex, 'rss100');
M_.param_names = char(M_.param_names, 'expg');
M_.param_names_tex = char(M_.param_names_tex, 'expg');
M_.exo_det_nbr = 0;
M_.exo_nbr = 5;
M_.endo_nbr = 18;
M_.param_nbr = 25;
M_.orig_endo_nbr = 16;
M_.aux_vars(1).endo_index = 17;
M_.aux_vars(1).type = 1;
M_.aux_vars(1).orig_index = 1;
M_.aux_vars(1).orig_lead_lag = -1;
M_.aux_vars(2).endo_index = 18;
M_.aux_vars(2).type = 1;
M_.aux_vars(2).orig_index = 1;
M_.aux_vars(2).orig_lead_lag = -2;
M_.Sigma_e = zeros(5, 5);
M_.H = 0;
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('US_CPS10_rep2_static');
erase_compiled_function('US_CPS10_rep2_dynamic');
M_.lead_lag_incidence = [
 1 11 29;
 2 12 30;
 0 13 31;
 0 14 0;
 3 15 0;
 4 16 0;
 5 17 0;
 6 18 0;
 7 19 0;
 8 20 32;
 0 21 33;
 0 22 0;
 0 23 0;
 0 24 0;
 0 25 0;
 0 26 0;
 9 27 0;
 10 28 0;]';
M_.nstatic = 6;
M_.nfwrd   = 2;
M_.npred   = 7;
M_.nboth   = 3;
M_.equations_tags = {
};
M_.exo_names_orig_ord = [1:5];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(18, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(5, 1);
M_.params = NaN(25, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 70;
M_.NNZDerivatives(2) = -1;
M_.NNZDerivatives(3) = -1;
close all;
M_.params( 1 ) = 2;
niu = M_.params( 1 );
M_.params( 2 ) = 0.1;
lambddapss = M_.params( 2 );
M_.params( 3 ) = 0;
iotap = M_.params( 3 );
M_.params( 4 ) = 0.995;
rhopit = M_.params( 4 );
M_.params( 5 ) = 0.468;
gamma100 = M_.params( 5 );
M_.params( 6 ) = 0.501;
pss100 = M_.params( 6 );
M_.params( 7 ) = 0.159;
Fbeta = M_.params( 7 );
M_.params( 8 ) = 0.445;
hparam = M_.params( 8 );
M_.params( 9 ) = 0.782;
xip = M_.params( 9 );
M_.params( 10 ) = 1.784;
fp = M_.params( 10 );
M_.params( 11 ) = 0.643;
fy = M_.params( 11 );
M_.params( 12 ) = 0.704;
rhoR = M_.params( 12 );
M_.params( 13 ) = 0.264;
rhoz = M_.params( 13 );
M_.params( 14 ) = 0.598;
rholambddap = M_.params( 14 );
M_.params( 15 ) = 0.699;
rhob = M_.params( 15 );
M_.params( 16 ) = 0.160;
sdr = M_.params( 16 );
M_.params( 17 ) = 0.641;
sdz = M_.params( 17 );
M_.params( 18 ) = 0.118;
sdlambddap = M_.params( 18 );
M_.params( 19 ) = 0.081;
sdpit = M_.params( 19 );
M_.params( 20 ) = 2.533;
sdb = M_.params( 20 );
M_.params( 21 ) = M_.params(5)/100;
gamma = M_.params( 21 );
M_.params( 22 ) = 100/(100+M_.params(7));
betta = M_.params( 22 );
M_.params( 23 ) = exp(M_.params(21))/M_.params(22)-1;
rss = M_.params( 23 );
M_.params( 24 ) = 100*M_.params(23);
rss100 = M_.params( 24 );
M_.params( 25 ) = exp(M_.params(21));
expg = M_.params( 25 );
steady;
resid(1);
%
% SHOCKS instructions
%
make_ex_;
M_.exo_det_length = 0;
M_.Sigma_e(4, 4) = 1;
M_.sigma_e_is_diagonal = 1;
options_.irf = 17;
options_.order = 1;
options_.solve_algo = 1;
var_list_=[];
var_list_ = 'inflgap';
var_list_ = char(var_list_, 'realR');
info = stoch_simul(var_list_);
save('US_CPS10_rep2_results.mat', 'oo_', 'M_', 'options_');


disp(['Total computing time : ' dynsec2hms(toc) ]);
diary off
