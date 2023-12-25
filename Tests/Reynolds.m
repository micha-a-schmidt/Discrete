ClearAll[ReynoldsOp];
ReynoldsOp[f_, args_, RepMat_] := 
  Simplify[Apply[Plus, Map[f[#.args] &, RepMat]]/Length[RepMat]];
ClearAll[TrialFunc];
TrialFunc[exps_] := Function[args, Apply[Times, args^exps]];
ClearAll[myIntPart];
myIntPart[int_] := 
 Flatten[Map[
   Function[i, 
    Map[Join[#, ConstantArray[0, 4 - i]] &, 
     IntegerPartitions[int, {i}]]], Range[4]], 1]
ClearAll[guessCand];
guessCand[int_] := 
  Union[DeleteCases[
    Map[ReynoldsOp[TrialFunc[#], Variables[\[Phi]], RepMat] &, 
     myIntPart[int]], 0]];
