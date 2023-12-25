LoadPackage("repsn");;

MBgetGroupInfo:=function(G)
	     local elem,size,charTab,sizeRep,reps,i,gens,allMatrices,temp,j,str;
	     elem:=Elements(G);;
	     size:=Size(G);;
	     charTab:=Irr(G);;
	     sizeRep:=[];;
	     reps:=[];;
	     for i in [1..Length(charTab)] do
	        Add(sizeRep,charTab[i][1]);;
   		Add(reps,IrreducibleAffordingRepresentation(charTab[i]));;
	     od;;
	     gens:= GeneratorsOfGroup(G);;

	     allMatrices:=[];;
	     for i in [1..Length(charTab)] do
	        temp:=[];;
		for j in [1..size] do
		    Add(temp,elem[j]^reps[i]);;
		od;;
	        Add(allMatrices,temp);;
	     od;;

       Print("\nSTART OUTPUT\n");
	     Print("\"",StructureDescription(G),"\"","\n");
	     Print(size,"\n");
	     Print(sizeRep,"\n");
	     Print(SizesConjugacyClasses(CharacterTable(G)),"\n");
	     Print(List(charTab,h->List(h)),"\n");
	     Print(allMatrices,"\n");
end;;
