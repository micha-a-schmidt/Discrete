(* ::Package:: *)

(* ::Text:: *)
(*Generating the Group Sigma(36)=(Z _3 * Z _3 ) x| Z _4 *)


SetDirectory[NotebookDirectory[]];


Needs["Discrete`ModelBuildingTools`"];
$MBDebug=False


(* Auxilliary functions definitions *)
getGenMatrices[g_,repnr_,generatorIndices_]:=Module[{aux,matrices},
aux={};
matrices=MBgetRepMatrices[g,repnr];
Do[AppendTo[aux,matrices[[i]]],{i,generatorIndices}];
aux];
irrepMatrices[g_,generatorIndices_]:=Module[{aux,aux2},
aux=Table[{},{i,1,Length[generatorIndices]}];
Do[
aux2=getGenMatrices[g,j,generatorIndices];
Do[AppendTo[aux[[i]],aux2[[i]]],{i,1,Length[generatorIndices]}]
,{j,MBgetNumberOfReps[g]}];
aux
];



(* ::Text:: *)
(*Sigma(36)*)


(* ::Text:: *)
(*GAP Result*)


(*
\:250c\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\:2510 GAP 4.11.0 of 29-Feb-2020
\[VerticalLine] GAP \[VerticalLine] https://www.gap-system.org
\:2514\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\[HorizontalLine]\:2518 Architecture:x86_64-pc-linux-gnu-default64-kv7
Configuration:gmp 6.1.2,GASMAN
Loading the library and packages...
Packages:AClib 1.3.2,Alnuth 3.1.2,AtlasRep 2.1.0,AutoDoc 2019.09.04,AutPGrp 1.10.2,CaratInterface 2.3.3,CRISP 1.4.5,Cryst 4.1.23,CrystCat 1.1.9,CTblLib 1.2.2,FactInt 1.6.3,FGA 1.4.0,Forms 1.2.5,GAPDoc 1.6.3,genss 1.6.6,IO 4.7.0,IRREDSOL 1.4,LAGUNA 3.9.3,orb 4.8.3,Polenta 1.3.9,Polycyclic 2.15.1,PrimGrp 3.4.0,RadiRoot 2.8,recog 1.3.2,ResClasses 4.7.2,SmallGrp 1.4.1,Sophus 1.24,SpinSym 1.5.2,TomLib 1.2.9,TransGrp 2.0.5,utils 0.69
Try'??help' for help. See also '?copyright', '?cite' and '?authors'
gap>A3:=[[1,0,0],[0,E(3),0],[0,0,E(3)^2]];[[1,0,0],[0,E(3),0],[0,0,E(3)^2]];
   gap>c:=-[[1,0,0],[0,0,1],[0,1,0]];[[-1,0,0],[0,0,-1],[0,-1,0]]; 
    gap>b:=[[0,1,0],[0,0,1],[1,0,0]];[[0,1,0],[0,0,1],[1,0,0]];
     gap>d:=E(4)*1/ER(3)*[[1,1,1],[1,E(3)^2,E(3)],[1,E(3),E(3)^2]];[[1/3*E(3)-1/3*E(3)^2,1/3*E(3)-1/3*E(3)^2,1/3*E(3)-1/3*E(3)^2],[1/3*E(3)-1/3*E(3)^2, -2/3*E(3)-1/3*E(3)^2,1/3*E(3)+2/3*E(3)^2],[1/3*E(3)-1/3*E(3)^2,1/3*E(3)+2/3*E(3)^2,-2/3*E(3)-1/3*E(3)^2]];
      gap>G:=Group(A3,c,b,d);
      <matrix group with 4 generators>
      gap>IdGroup(G);[108,15];
         gap>StructureDescription(G);
         "((C3 x C3) : C3) : C4"
*)


(* ::Text:: *)
(*Generators*)


\[Omega]=Exp[(2Pi*I)/3];
A3={{1,0,0},{0,\[Omega],0},{0,0,\[Omega]^2}};
c=-{{1,0,0},{0,0,1},{0,1,0}};
b={{0,1,0},{0,0,1},{1,0,0}};
d=Exp[(Pi*I)/2]/Sqrt[3] {{1,1,1},{1,\[Omega]^2,\[Omega]},{1,\[Omega],\[Omega]^2}};


(* ::Text:: *)
(*Generating the Group*)


$MBDebug=False

G=MBloadGeneratedGAPGroup[{A3,c,b,d}];

MBgetStructureDescription[G]



