Program project1;
uses crt;
Var
f : text;
path,s : string;
i,count:integer;
fg: boolean;
begin
writeln('Please, enter the path to file, what you want open');
readln(path);

assign(f,path);
Reset(f);

while not EoF(f) do
  begin
    fg:=false;
    Readln(f, s);
    writeln(s);
    for i:=1 to Length(s) do
      if s[i]<>' ' then
        begin
        if fg=false then Inc(count);
        fg:=true;
        end
      else fg:=false;
end;
writeln('Кол-во слов в файле: ', count);

readln();

end.

