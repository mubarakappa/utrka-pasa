//copyright mubarak appa 2022-2042

uses Crt;

var
imena : array[1..20] of string;
rasa : array[1..20] of string;

//ime rasa kilaza godina
ucesnici : array[1..15, 1..6] of integer;

i, j, select1, select2, select3 : integer;

pare, dist, enddist, lead, rang, score, temp : integer;

key : string;

Begin
		randomize;

		write('unesite kolko hocete da "donirate": ');
		readln(pare);
		ClrScr;

    score := 0;

		write('unesite duzinu trake (oko 10-50): ');
		readln(enddist);
		ClrScr;
	
		imena[1] := 'lesi';
		imena[2] := 'rajna';
		imena[3] := 'mili';
		imena[4] := 'sujo';
		imena[5] := 'cuko';
		imena[6] := 'loso';
		imena[7] := 'vucic';
		imena[8] := 'vulin';
		imena[9] := 'daco';
		imena[10] := 'zoki';
		imena[11] := 'mujo';
		imena[12] := 'benjo';
		imena[13] := 'dodik';
		imena[14] := 'stefanovic';
		imena[15] := 'radovan';
		imena[16] := 'krompir';
		imena[17] := 'munja';
		imena[18] := 'putin';
		imena[19] := 'bill';
		imena[20] := 'staljo';

		rasa[1] := 'zlatni povratnik';
		rasa[2] := 'pit bull';
		rasa[3] := 'shiba inu';
		rasa[4] := 'njemacki ovcar';
		rasa[5] := 'bich on frise';
		rasa[6] := 'americki shorthair';
		rasa[7] := 'irski poglavar';
		rasa[8] := 'pudlica';
		rasa[9] := 'norveski nosac';
		rasa[10] := 'alaski malamut';
		rasa[11] := 'bigl';
		rasa[12] := 'majmunski pinc';
		rasa[13] := 'avganistanski hrt';
		rasa[14] := 'australijski terijer';
		rasa[15] := 'bosanski ostrodlacki gonic - barak';
		rasa[16] := 'dalmatinac';
		rasa[17] := 'doberman';
		rasa[18] := 'tornjak';
		rasa[19] := 'rotvajler';
		rasa[20] := 'jazavcar';

	//setup ucesnike
	for i := 1 to 15 Do
	Begin
			ucesnici[i, 1] := Random(19) + 1;
			ucesnici[i, 2] := Random(19) + 1; 
			ucesnici[i, 3] := Random(49) + 1;
			ucesnici[i, 4] := Random(9) + 1;
			ucesnici[i, 5] := 0;
			ucesnici[i, 6] := 0;
	end;

	j := 1;
	select1 := 0;

	Repeat
	writeln('izaberi psa za prvo mjesto. "<", ">" za saltanje, "A" da potvrdis izbor');
	writeln;
	writeln(' ime psa: ', imena[ucesnici[j, 1]]);
	writeln(' rasa psa: ', rasa[ucesnici[j, 2]]);
	writeln(' kilaza psa: ', ucesnici[j, 3], 'kg');
	writeln(' godina psa: ', ucesnici[j, 4],  'g');
	writeln(' pozicija psa: ', j, '.');
	writeln;

	
	 readln(key);
	 if key = '>' then
	 Begin
	 if j = 15 then
	 j := 1
	 Else
	 j:= j+1;
	 end;

	if key = '<' then
	 Begin
	 if j = 1 then
	 j := 15
	 Else
	 j:= j-1;
	 end;

	 if key = 'A' then select1 := j;

	 ClrScr;
	 
	Until  select1 <> 0;


	j := 1;
	select2 := 0;

	Repeat
	writeln('izaberi psa za drugo mjesto. "<", ">" za saltanje, "A" da potvrdis izbor');
	writeln;
	writeln(' ime psa: ', imena[ucesnici[j, 1]]);
	writeln(' rasa psa: ', rasa[ucesnici[j, 2]]);
	writeln(' kilaza psa: ', ucesnici[j, 3], 'kg');
	writeln(' godina psa: ', ucesnici[j, 4],  'g');
	writeln(' pozicija psa: ', j, '.');
	writeln;


	 readln(key);
	 if key = '>' then
	 Begin
	 if j = 15 then
	 j := 1
	 Else
	 j:= j+1;
	 end;

	if key = '<' then
	 Begin
	 if j = 1 then
	 j := 15
	 Else
	 j:= j-1;
	 end;

	 if key = 'A' then
	 Begin
	 if j <> select1 then select2 := j;
	 end;

	 ClrScr;

	Until select2 <> 0;

	j := 1;
	select3 := 0;

	Repeat
	writeln('izaberi psa za trece mjesto. "<", ">" za saltanje, "A" da potvrdis izbor');
	writeln;
	writeln(' ime psa: ', imena[ucesnici[j, 1]]);
	writeln(' rasa psa: ', rasa[ucesnici[j, 2]]);
	writeln(' kilaza psa: ', ucesnici[j, 3], 'kg');
	writeln(' godina psa: ', ucesnici[j, 4],  'g');
	writeln(' pozicija psa: ', j, '.');
	writeln;


	 readln(key);
	 if key = '>' then
	 Begin
	 if j = 15 then
	 j := 1
	 Else
	 j:= j+1;
	 end;

	if key = '<' then
	 Begin
	 if j = 1 then
	 j := 15
	 Else
	 j:= j-1;
	 end;

	 if key = 'A' then
	 Begin
	 if (j <> select1) and (j <> select2) then select3 := j;
	 end;

	 ClrScr;

	Until  select3 <> 0;

	writeln('vasi izbori:');
	writeln;
	writeln(rasa[ucesnici[select1, 2]], ' ', imena[ucesnici[select1, 1]], ' za prvo mjesto');
	writeln(rasa[ucesnici[select2, 2]], ' ', imena[ucesnici[select2, 1]], ' za drugo mjesto');
	writeln(rasa[ucesnici[select3, 2]], ' ', imena[ucesnici[select3, 1]], ' za trece mjesto');
	writeln;
	writeln('takmicenje pocinje...');
	readln;
	ClrScr;

 dist := 0;
 lead := 0;
 rang := 1;
 Repeat
	write('START');
	for j := 0 to enddist do write(' ');
	writeln('FINISH');
	for j := 1 to 9 do
	Begin
			write(j,'.  ');
			for i := 0 to ucesnici[j, 5] Do
			Begin
			write('#');
			end;
			for i := 0 to enddist - ucesnici[j, 5] Do
			Begin
			write(' ');
			end;
			write('|');
			if ucesnici[j, 5] = lead then write(' VODI');
			if ucesnici[j,6] <> 0 then write(' #', ucesnici[j,6]);
			if j = select1 then write(' (1. IZBOR)');
			if j = select2 then write(' (2. IZBOR)');
			if j = select3 then write(' (3. IZBOR)');
			writeln;
	end;

	for j := 10 to 15 do
	Begin
			write(j,'. ');
			for i := 0 to ucesnici[j, 5] Do
			Begin
			write('#');
			end;
			for i := 0 to enddist - ucesnici[j, 5] Do
			Begin
			write(' ');
			end;
			write('|');
			if ucesnici[j, 5] = lead then write(' VODI');
			if ucesnici[j,6] <> 0 then write(' #', ucesnici[j,6]);
			if j = select1 then write(' (1. IZBOR)');
			if j = select2 then write(' (2. IZBOR)');
			if j = select3 then write(' (3. IZBOR)');
			writeln;
	end;


	writeln;

	for j := 1 to 15 Do
	Begin
			if ucesnici[j,6] = 0 then ucesnici[j, 5] := ucesnici[j, 5] + Random(4) + 1;
			if (ucesnici[j,5] >= enddist) and (ucesnici[j,6] = 0) then
			Begin
			ucesnici[j,5] := enddist + 1;
			ucesnici[j,6] := rang;
			rang := rang + 1;
			end;
	end;
	lead := 0;
	for j := 1 to 15 Do
	Begin
			if (ucesnici[j,5] > lead) and (ucesnici[j, 6] = 0) then lead := ucesnici[j,5];
	end;

			dist := dist + 1;
			readln;
			if rang <> 17 then ClrScr;
			if rang = 16 then
			begin
			dist := enddist - 1;
			rang := 17;
			end;
 Until dist = enddist;

 for i := 1 to 15 Do
 Begin
 
  for j := 1 to 15 Do
	Begin
	if ucesnici[j, 6] = i then temp := j;
	End;

	
	write('#',i,' ', rasa[ucesnici[temp, 2]], ' ', imena[ucesnici[temp, 1]]);
	if ucesnici[select1, 6] = i then write(' [vas 1. izbor]');
	if ucesnici[select2, 6] = i then write(' [vas 2. izbor]');
	if ucesnici[select3, 6] = i then write(' [vas 3. izbor]');
	writeln;
 end;

	if ucesnici[select1, 6] = 1 then score := score + 1;
  if ucesnici[select2, 6] = 2 then score := score + 1;
	if ucesnici[select3, 6] = 3 then score := score + 1;

	score := score * pare;

	writeln;
	writeln('cestitamo, dobili ste nazad ', score, ' km');
	if score = 0 then write('hvala na donaciji');

	readln;

end.