a= 1;	%branco
b= 2;	%azul
c= 3;	%vermelho
d= 4;	%laranja
e= 5;	%verde
f= 6;	%amarelo

for i =1:3
	for j=1:3
		U(i,j)=a;
		F(i,j)=b;
		B(i,j)=c;
		L(i,j)=d;
		R(i,j)=e;
		D(i,j)=f;
	end
end

%MOVIMENTOS
while true
	mov = input('mov: '); 
		nU=U;
		nF=F;
		nB=B;
		nL=L;
		nR=R;
		nD=D;
		if mov=='U'
			for k=1:3
				for j=1:3
					U(4-l,k)=nU(k,j);
				end
			end
			L(1,:) = nF(1,:);
			F(1,:) = nR(1,:);
			R(1,:) = nB(1,:);
			B(1,:) = nL(1,:);
		elseif mov=='F'
			for k=1:3
				for j=1:3
					F(j,4-k)=nF(k,j);
				end
				U(3,k) = nL(4-k,3);
				R(k,1) = nU(3,k);
				D(1,4-k) = nR(k,1);
				L(k,3) = nD(1,k);
			end
		elseif mov=='B'
			for k=1:3
				for j=1:3
					B(4-j,k)=nB(k,j);
				end
				U(1,k) = nL(4-k,1);
				R(k,3) = nU(1,k);
				D(3,4-k) = nR(k,3);
				L(k,1) = nD(3,k);
			end
		elseif mov=='L'
			for k=1:3
				for j=1:3
					L(j,4-k)=nL(k,j);
				end
			end
			F(:,1)=nU(:,1);
			D(:,1)=nF(:,1);
			B(:,3)=nD(:,1);
			U(:,1)=nB(:,3);
		elseif mov=='R'
			for k=1:3
				for j=1:3
					R(j,4-k)=nR(k,j);
				end
			end
			B(:,1)=nU(:,3);
			U(:,3)=nF(:,3);
			F(:,3)=nD(:,3);
			D(:,3)=nB(:,1);
		elseif mov=='D'
			for k=1:3
				for j=1:3
					D(4-j,k)=nD(k,j);
				end
			end
			R(3,:) = nF(3,:);
			B(3,:) = nR(3,:);
			L(3,:) = nB(3,:);
			F(3,:) = nL(3,:);
		elseif mov=='u'
			for k=1:3
				for j=1:3
					U(4-j,k)=nU(k,j);
				end
			end
			R(1,:) = nF(1,:);
			B(1,:) = nR(1,:);
			L(1,:) = nB(1,:);
			F(1,:) = nL(1,:);
		elseif mov=='f'
			for k=1:3
				for j=1:3
					F(4-j,k)=nF(k,j);
				end
				L(4-k,3) = nU(3,k);
				U(3,k) = nR(k,1);
				R(k,1) = nD(1,4-k);
				D(1,k) = nL(k,3);
			end
		elseif mov=='b'
			for k=1:3
				for j=1:3
					B(4-j,k)=nB(k,j);
				end
				L(4-k,1) = nU(1,k);
				U(1,k) = nR(k,3);
				R(k,3) = nD(3,4-k);
				D(3,k) = nL(k,1);
			end
		elseif mov=='l'
			for k=1:3
				for j=1:3
					L(4-j,k)=nL(k,j);
				end
			end
			U(:,1)=nF(:,1);
			F(:,1)=nD(:,1);
			D(:,1)=nB(:,3);
			B(:,3)=nU(:,1);
		elseif mov=='r'
			for k=1:3
				for j=1:3
					R(4-j,k)=nR(k,j);
				end
			end
			F(:,3)=nU(:,3);
			D(:,3)=nF(:,3);
			B(:,1)=nD(:,3);
			U(:,3)=nB(:,1);
		elseif mov=='d'
			for k=1:3
				for j=1:3
					D(4-j,k)=nD(k,j);
				end
			end
			F(3,:) = nR(3,:);
			R(3,:) = nB(3,:);
			B(3,:) = nL(3,:);
			L(3,:) = nF(3,:);
		elseif mov=='reset'
			a= 1;	%branco
			b= 2;	%azul
			c= 3;	%vermelho
			d= 4;	%laranja
			e= 5;	%verde
			f= 6;	%amarelo

			for i =1:3
				for j=1:3
					U(i,j)=a;
					F(i,j)=b;
					B(i,j)=c;
					L(i,j)=d;
					R(i,j)=e;
					D(i,j)=f;
				end
			end
		end


	cU=[];
	cD=[];
	cR=[];
	cL=[];
	cF=[];
	cB=[];


	for i=1:3
		for j=1:3
	%%-----------------
			if R(i,j)==1
				cR{i,j}=[1 1 1];
			end
			if R(i,j)==2
				cR{i,j}=[0 0 1];
			end
			if R(i,j)==3
				cR{i,j}=[1 0 0];
			end
			if R(i,j)==4
				cR{i,j}=[.5 .5 0];
			end
			if R(i,j)==5
				cR{i,j}=[0 1 0];
			end
			if R(i,j)==6
				cR{i,j}=[1 1 0];
			end
	%%-----------------
			if F(i,j)==1
				cF{i,j}=[1 1 1];
			end
			if F(i,j)==2
				cF{i,j}=[0 0 1];
			end
			if F(i,j)==3
				cF{i,j}=[1 0 0];
			end
			if F(i,j)==4
				cF{i,j}=[.5 .5 0];
			end
			if F(i,j)==5
				cF{i,j}=[0 1 0];
			end
			if F(i,j)==6
				cF{i,j}=[1 1 0];
			end
	%%-----------------
			if U(i,j)==1
				cU{i,j}=[1 1 1];
			end
			if U(i,j)==2
				cU{i,j}=[0 0 1];
			end
			if U(i,j)==3
				cU{i,j}=[1 0 0];
			end
			if U(i,j)==4
				cU{i,j}=[.5 .5 0];
			end
			if U(i,j)==5
				cU{i,j}=[0 1 0];
			end
			if U(i,j)==6
				cU{i,j}=[1 1 0];
			end
	%%-----------------
			if D(i,j)==1
				cD{i,j}=[1 1 1];
			end
			if D(i,j)==2
				cD{i,j}=[0 0 1];
			end
			if D(i,j)==3
				cD{i,j}=[1 0 0];
			end
			if D(i,j)==4
				cD{i,j}=[.5 .5 0];
			end
			if D(i,j)==5
				cD{i,j}=[0 1 0];
			end
			if D(i,j)==6
				cD{i,j}=[1 1 0];
			end
	%%-----------------
			if L(i,j)==1
				cL{i,j}=[1 1 1];
			end
			if L(i,j)==2
				cL{i,j}=[0 0 1];
			end
			if L(i,j)==3
				cL{i,j}=[1 0 0];
			end
			if L(i,j)==4
				cL{i,j}=[.5 .5 0];
			end
			if L(i,j)==5
				cL{i,j}=[0 1 0];
			end
			if L(i,j)==6
				cL{i,j}=[1 1 0];
			end
	%%-----------------
			if B(i,j)==1
				cB{i,j}=[1 1 1];
			end
			if B(i,j)==2
				cB{i,j}=[0 0 1];
			end
			if B(i,j)==3
				cB{i,j}=[1 0 0];
			end
			if B(i,j)==4
				cB{i,j}=[.5 .5 0];
			end
			if B(i,j)==5
				cB{i,j}=[0 1 0];
			end
			if B(i,j)==6
				cB{i,j}=[1 1 0];
			end
	%%-----------------
		end
	end

	figure(1)
	hold on
	title(mov)
	for i=1:3
		for j=1:3
			%%UP
			plot3(j, 4-i, 3.5,'ks','MarkerSize',35, 'MarkerFaceColor', cU{i,j})
			%%DOWN
			plot3(j, i, 0.5,'ks','MarkerSize',35, 'MarkerFaceColor', cD{i,j})
			%%FRONT
			plot3(j, 0.5, 4-i,'ks','MarkerSize',35, 'MarkerFaceColor', cF{i,j})
			%%BACK
			plot3(4-j, 3.5, 4-i,'ks','MarkerSize',35, 'MarkerFaceColor', cB{i,j})
			%%LEFT
			plot3(0.5, 4-j, 4-i,'ks','MarkerSize',35, 'MarkerFaceColor', cL{i,j})
			%%RIGHT
			plot3(3.5, j, 4-i,'ks','MarkerSize',35, 'MarkerFaceColor', cR{i,j})
		end
	end
	figure(2)
	hold on
	title(mov)
	for i=1:3
		for j=1:3
			%%UP
			plot3(j, 4-i, 3.5,'ko','MarkerSize',35, 'MarkerFaceColor', cU{i,j})
			%%DOWN
			plot3(j, i, 0.5,'ko','MarkerSize',35, 'MarkerFaceColor', cD{i,j})
			%%FRONT
			plot3(j, 0.5, 4-i,'ko','MarkerSize',35, 'MarkerFaceColor', cF{i,j})
			%%BACK
			plot3(4-j, 3.5, 4-i,'ko','MarkerSize',35, 'MarkerFaceColor', cB{i,j})
			%%LEFT
			plot3(0.5, 4-j, 4-i,'ko','MarkerSize',35, 'MarkerFaceColor', cL{i,j})
			%%RIGHT
			plot3(3.5, j, 4-i,'ko','MarkerSize',35, 'MarkerFaceColor', cR{i,j})
		end
	end
end