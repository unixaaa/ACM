var ch:char;
    n,m,i,j:integer;
    f:array[0..200,0..200]of int64;
begin
  for ch:='0' to '9' do begin
    assign(input,'divide3'+ch+'.in');
    reset(input);
    assign(output,'divide3'+ch+'.out');
    rewrite(output);
    readln(n,m);
    fillchar(f,sizeof(f),0);
    for i:=1 to n do f[i,1]:=1;
    for j:=2 to m do begin
      for i:=j to n do f[i,j]:=f[i-1,j-1]+f[i-j,j];
    end;
    writeln(f[n,m]);
    close(input);
    close(output);
  end;
end.
