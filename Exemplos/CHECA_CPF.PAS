{ATENÇÃO: Esta rotina ainda está em desenvolvimento.
          O código gerado pode apresentar incorreções sintáticas. }
program semnome;
uses Crt;
{ Disciplina  : [Linguagem e Lógica de Programação]}
{ Professor(a): Emeldito Covane}
{ Descrição   : Aqui você descreve o que o programa faz! (função)}
{ Autor(a)    : Nome do(a) aluno(a) EU}
{ Data atual  : 01/08/2022}
Var
{ Seção de Declarações das variáveis}
flag,XTECLA : boolean;
XMENSAGEM : string;
MNUIT,nuit,D1,D2,XCAR,XC1,XC2 : string;
i,x,XNUIT,CONTADOR,ACUMULA,XD1,XD2 : integer;
begin
   { Seção de Comandos, procedimento, funções, operadores, etc...}
   MUDACOR('AMARELO','FRENTE');
   ClrScr;
   Flag := true;
   while FLAG do begin
      write('DIGITE UM NUIT ou S pra sair: ');
      readln(NUIT);
      if NUIT = 'S' then begin
      FLAG := false;
      Exit;
      end;
      if length(NUIT) < 11 then begin
      writeln(' ');
      writeln('NUIT INVÁLIDO !!! - TECLE <ENTER>');
      readln(XTECLA);
      end else begin
      D1 := copy(NUIT,10,1);
      D2 := copy(NUIT,11,1);
      MNUIT := copy(NUIT,1,9);
      ACUMULA:= 0;
      CONTADOR := 2;
      for I of 9 to 1 PASSO -1 do begin
      XCAR := copy(MNUIT,I,1);
      XNUIT := { Use o str }(XCAR) * CONTADOR;
      ACUMULA := ACUMULA + XNUIT;
      CONTADOR := CONTADOR + 1;
      end;

      XD1 := 11 - (ACUMULA MOD 11);
      XC1 := {Use o VAL(xstring,xinteiro,code}(XD1);
      MNUIT := MNUIT + XC1;
      ACUMULA:= 0;
      CONTADOR := 2;

      for I of 10 to 1 PASSO -1 do begin
      XCAR := copy(MNUIT,I,1);
      XNUIT := { Use o str }(XCAR) * CONTADOR;
      ACUMULA := ACUMULA + XNUIT;
      CONTADOR := CONTADOR + 1;
      end;

      XD2 := 11 - (ACUMULA MOD 11);
      XC2 := {Use o VAL(xstring,xinteiro,code}(XD2);
      MNUIT := MNUIT + XC2;

      if (MNUIT = NUIT) then begin
      XMENSAGEM := 'NUIT É VERDADEIRO !!! - TECLE <ENTER>';
      end else begin
      XMENSAGEM := 'NUIT NÃO É VERDADEIRO !!! - TECLE <ENTER>';
      end;
      writeln(' ');
      writeln(XMENSAGEM);
      readln(XTECLA);
      end;
   end;

end.
