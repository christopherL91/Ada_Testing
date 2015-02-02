-- The MIT License (MIT)

-- Copyright (c) 2015 Christopher Lillthors

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
-- THE SOFTWARE.

-- Author: Christopher Lillthors
-- Date: 2/2 - 15

with Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Test_Package; use Test_Package;

with Ada.IO_Exceptions;

procedure Main is
	-- Number of elements.
	Num_Ages: constant Natural := 10;

	--Define types.
	type Ages is array (1..Num_Ages) of Integer;

	-- Variables.
	test: Ages;

procedure inputAges(a : Ages) is
begin -- inputAges
	for i in a'Range loop
		get(test(i));
	end loop;
end inputAges;

procedure printArray(a : Ages) is
begin -- printArray
	for i in a'Range loop
		Ada.Text_IO.Put_Line(Integer'Image(a(i)));
	end loop;
end printArray;

begin -- Main
	Ada.Text_IO.Put_Line("Hello world");
	Hello; -- Calls Test_Package.Hello;

	inputAges(test); -- Fill array with numbers.
	printArray(test); -- Print array on STDOUT.
exception
	when ADA.IO_EXCEPTIONS.DATA_ERROR =>
		Ada.Text_IO.Put_Line("Invalid input!");
end Main;