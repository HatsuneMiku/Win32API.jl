# Win32API

VERSION >= v"0.4.0-dev+6521" && __precompile__()
module Win32API

export MessageBoxA, MessageBoxW

function MessageBoxA(
  hwnd::UInt, msg::AbstractString, title::AbstractString, opt::UInt)
  return ccall((:MessageBoxA, :user32), stdcall,
    UInt, (Ptr{UInt}, Ptr{Cchar}, Ptr{Cchar}, UInt),
    hwnd, msg, title, opt)
end

function MessageBoxW(
  hwnd::UInt, msg::Array{Cwchar_t}, title::Array{Cwchar_t}, opt::UInt)
  return ccall((:MessageBoxW, :user32), stdcall,
    UInt, (Ptr{UInt}, Ptr{Cwchar_t}, Ptr{Cwchar_t}, UInt),
    hwnd, msg, title, opt)
end

end
