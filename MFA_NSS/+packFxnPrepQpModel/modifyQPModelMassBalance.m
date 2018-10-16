function qpModel = modifyQPModelMassBalance180116(model, expData, optionsMFA, qpModel, Cx, C0)
%% 物質収支の制約式を追加する
% Sv = dC/dt, v = invS * [dC/dt;v^ind]  -> S*invS*[dC/dt;v^ind] - dC/dt = 0
% この制約式がないと、NADHとNADのconcRatesのどちらもがparamLocalに含まれてしまう。

nConstr = size(optionsMFA.convertMat.constrMassBalance,1);
qpModel.Aeq = [qpModel.Aeq; optionsMFA.convertMat.constrMassBalance];
qpModel.beq = [qpModel.beq; zeros(nConstr,1)];

end
