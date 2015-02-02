with Ada.Text_IO;

package body Test_Package is
	procedure Hello is
	begin -- Hello
		Ada.Text_IO.Put_Line("Hello from Test_Package");
	end Hello;
end Test_Package;