var n,m,i:integer;
    ans:int64;
begin
    assign(input,'divide2.in');
    reset(input);
    assign(output,'divide2.out');
    rewrite(output);
    readln(n,m);
    ans:=n+m-1;
    for i:=2 to m-1 do ans:=ans*(n+m-i)div i;
    writeln(ans);
    close(input);
    close(output);
end.
