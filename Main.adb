-- Author: Christopher Lillthors
-- Date: 2/2 - 15
-- License: MIT

with Ada.Text_IO;
with Test_Package; use Test_Package;

procedure Main is
begin -- Main
	Ada.Text_IO.Put_Line("Hello world");
	Hello; -- Calls Test_Package.Hello;
end Main;