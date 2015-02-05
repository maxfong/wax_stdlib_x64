# wax_stdlib_x64
感谢wax(https://github.com/probablycorey/wax) 

根据compile-stdlib来创建wax_stdlib.h

wax的lua版本为5.1.4，编译并安装lua

终端执行compile-stdlib.sh即可在当前文件夹生成wax_stdlib.h

如需修改32 bit,修改luac.lua: local bits = 64 --or 32
