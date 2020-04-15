function [cum_ret, cumprod_ret, daily_ret, daily_portfolio] ...
    = anticor_anticor(fid, data, varargins, opts)
% This file is an entry for the BAH(Anticor(Anticor)) strategy, the best
% variants of anticor
% 此文件为BAH, 长期持有策略的子入口文件。
%
% function [cum_ret, cumprod_ret, daily_ret, daily_portfolio] ...
%           = anticor(fid, data, varargins, opts)
%
% 函数所用输入变量分别为：
% cum_ret, cumprod_ret, daily_ret, daily_portfolio
% 最终回报，累积回报，每日回报，每日资产组合。
%
% cum_ret: cumulative wealth achived at the end of a period.
% cumprod_ret: cumulative wealth achieved till the end each period.
% daily_ret: daily return achieved by a strategy.
% daily_portfolio: daily portfolios
%
% 使用数据变量：市场序列矢量，日志书写，变量参数，为行为性操作预留的选择性输入参数。
% data: market sequence vectors
% fid: handle for write log file
% varargins: variable parameters
% opts: option parameter for behvaioral control
%
% Example: [cum_ret, cumprod_ret, daily_ret, daily_portfolio] ...
%          = anticor_anticor_start(fid, data, {30, 0}, opts);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This file is part of OLPS: http://OLPS.stevenhoi.org/
% Original authors: Bin LI, Steven C.H. Hoi 
% Contributors:
% Change log: 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Extract the parameters
W  = varargins{1};      % Maximum window size, or the number of experts
tc = varargins{2};      % transaction cost fee rate

% Run the anticor_anticor_run algorithm
[cum_ret, cumprod_ret, daily_ret, daily_portfolio] ...
    = anticor_anticor_run(fid, data, W, tc, opts);

end
