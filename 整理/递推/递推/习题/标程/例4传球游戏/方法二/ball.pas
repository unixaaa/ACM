type arr=array[0..30,0..30]of longint;
var n,m,i,j:longint;
    a,b:arr;

function mul(x,y:arr):arr;
  var i,j,k:longint;
  begin
    fillchar(mul,sizeof(mul),0);
    for i:=0 to n-1 do
      for j:=0 to n-1 do begin
        if x[i,j]<>0 then begin
           for k:=0 to n-1 do begin
             if y[j,k]<>0 then begin
                inc(mul[i,k],x[i,j]*y[j,k]);
             end;
           end;
        end;
      end;
  end;

function f(x:longint):arr;
  begin
    if x=1 then f:=a
    else begin
      f:=f(x shr 1);
      f:=mul(f,f);
      if odd(x) then f:=mul(f,a);
    end;
  end;

begin
  assign(input,'ball.in');
  reset(input);
  assign(output,'ball.out');
  rewrite(output);
  readln(n,m);
  for i:=0 to n-1 do begin
    a[(i-1+n)mod n,i]:=1;
    a[(i+1)mod n,i]:=1;
  end;
  b:=f(m);
  writeln(b[0,0]);
  close(input);
  close(output);
end.
