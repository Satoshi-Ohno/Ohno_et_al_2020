function qpModel = modifyQPModelConstrRxnSpecificNKnots171221(model, expData, optionsMFA, qpModel, optimType)
%% 独立変数の同定

% concRateとfluxについて制約式を追加する
tmpMatConstr=optionsMFA.convertMat.constrFluxNotForOptim;
nTmpConstr = size(tmpMatConstr,1);
tmpAeq1= tmpMatConstr;
tmpBeq1= zeros(nTmpConstr,1);

tmpMatConstr=optionsMFA.convertMat.constrConcRateNotForOptim;
nTmpConstr = size(tmpMatConstr,1);
tmpAeq2= tmpMatConstr;
tmpBeq2= zeros(nTmpConstr,1);

qpModel.Aeq = [qpModel.Aeq; tmpAeq1; tmpAeq2];
qpModel.beq = [qpModel.beq; tmpBeq1; tmpBeq2];

end
