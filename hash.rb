#!/usr/bin/ruby

hsh = colors = { "red" => 0xf00, "green" => 0x0f0 }

hsh.each do |key , value|
	print key, " is ", value, "\n"
end