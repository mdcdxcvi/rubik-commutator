randomturns=fix(rand*7)+1;
for i=1:randomturns
	randommov=fix(rand*12)+1;
	if randommov==1
		MOVE(1,i)=['U'];
		aMOVE(1,i)=['u'];
	elseif randommov==2
		MOVE(1,i)=['F'];
		aMOVE(1,i)=['f'];
	elseif randommov==3
		MOVE(1,i)=['B'];
		aMOVE(1,i)=['b'];
	elseif randommov==4
		MOVE(1,i)=['L'];
		aMOVE(1,i)=['l'];
	elseif randommov==5
		MOVE(1,i)=['R'];
		aMOVE(1,i)=['r'];
	elseif randommov==6
		MOVE(1,i)=['D'];
		aMOVE(1,i)=['d'];
	elseif randommov==7
		MOVE(1,i)=['u'];
		aMOVE(1,i)=['U'];
	elseif randommov==8
		MOVE(1,i)=['f'];
		aMOVE(1,i)=['F'];
	elseif randommov=9
		MOVE(1,i)=['b'];
		aMOVE(1,i)=['B'];
	elseif randommov==10
		MOVE(1,i)=['l'];
		aMOVE(1,i)=['L'];
	elseif randommov==11
		MOVE(1,i)=['r'];
		aMOVE(1,i)=['R'];
	elseif randommov==12
		MOVE(1,i)=['d'];
		aMOVE(1,i)=['D'];
	end
end