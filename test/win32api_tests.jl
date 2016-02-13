import Win32API
using Base.Test

@test 1 == Win32API.MessageBoxA(C_NULL, "world!", "Hello", 0)
@test 1 == Win32API.MessageBoxW(
  C_NULL, Array{Cwchar_t}([0x3044, 0]), Array{Cwchar_t}([0x3042, 0]), 0)
