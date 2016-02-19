# Win32API

VERSION >= v"0.4.0-dev+6521" && __precompile__()
module Win32API

export MessageBoxA, MessageBoxW

function MessageBoxA(
  hwnd::Ptr{Void}, msg::AbstractString, title::AbstractString, opt::Int)
  return ccall((:MessageBoxA, :user32), stdcall,
    UInt, (Ptr{Void}, Ptr{UInt8}, Ptr{UInt8}, UInt),
    hwnd, msg, title, opt)
end

function MessageBoxW(
  hwnd::Ptr{Void}, msg::Array{Cwchar_t}, title::Array{Cwchar_t}, opt::Int)
  return ccall((:MessageBoxW, :user32), stdcall,
    UInt, (Ptr{Void}, Ptr{Cwchar_t}, Ptr{Cwchar_t}, UInt),
    hwnd, msg, title, opt)
end

end
