Program ex_3;
var
f_1, f_2: file;
num_r, num_w: word;
clipboard: array[1..128] of byte;

begin
  assign(f_1, 'file_1');
  assign(f_2, 'file_copy');
  reset(f_1, 1);
	rewrite(f_2);
  
  while not eof(f_1) do
  begin
    blockread(f_1, clipboard, SizeOf(a), num_r);
		blockwrite(f_2, clipboard, num_r, num_w);
  end;
  
  close(f_1);
  close(f_2);
end.