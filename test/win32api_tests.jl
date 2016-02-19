import Win32API
using Base.Test

@test 1 == Win32API.MessageBoxA(C_NULL, "world!", "Hello", 0)
@test 1 == Win32API.MessageBoxW(C_NULL, [0x3044, 0x0000], [0x3042, 0x0000], 0)
