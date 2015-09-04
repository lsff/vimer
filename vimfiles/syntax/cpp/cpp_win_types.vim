"wintype
syntax keyword cppWinTypes ULONG
syntax keyword cppWinTypes PULONG
syntax keyword cppWinTypes USHORT
syntax keyword cppWinTypes PUSHORT
syntax keyword cppWinTypes UCHAR
syntax keyword cppWinTypes PUCHAR
syntax keyword cppWinTypes PSZ

syntax keyword cppWinConstant TRUE
syntax keyword cppWinConstant FALSE

syntax keyword cppWinConstant MAX_PATH

syntax keyword cppWinTypes IN
syntax keyword cppWinTypes OUT

syntax keyword cppWinTypes OPTIONAL

syntax keyword cppWinTypes far
syntax keyword cppWinTypes near
syntax keyword cppWinTypes __stdcall
syntax keyword cppWinTypes pascal
syntax keyword cppWinTypes _cdecl

syntax keyword cppWinTypes CALLBACK
syntax keyword cppWinTypes WINAPI
syntax keyword cppWinTypes WINAPIV
syntax keyword cppWinTypes APIENTRY
syntax keyword cppWinTypes APIPRIVATE
syntax keyword cppWinTypes PASCAL

syntax keyword cppWinTypes WINAPI_INLINE

syntax keyword cppWinTypes FAR
syntax keyword cppWinTypes NEAR
syntax keyword cppWinTypes CONST

syntax keyword cppWinTypes DWORD
syntax keyword cppWinTypes BOOL
syntax keyword cppWinTypes BYTE
syntax keyword cppWinTypes WORD
syntax keyword cppWinTypes FLOAT
syntax keyword cppWinTypes PFLOAT
syntax keyword cppWinTypes PBOOL
syntax keyword cppWinTypes LPBOOL
syntax keyword cppWinTypes PBYTE
syntax keyword cppWinTypes LPBYTE
syntax keyword cppWinTypes PINT
syntax keyword cppWinTypes LPINT
syntax keyword cppWinTypes PWORD
syntax keyword cppWinTypes LPWORD
syntax keyword cppWinTypes LPLONG
syntax keyword cppWinTypes PDWORD
syntax keyword cppWinTypes LPDWORD
syntax keyword cppWinTypes LPVOID
syntax keyword cppWinTypes LPCVOID

syntax keyword cppWinTypes INT
syntax keyword cppWinTypes UINT
syntax keyword cppWinTypes PUINT

syntax keyword cppWinTypes WPARAM
syntax keyword cppWinTypes LPARAM
syntax keyword cppWinTypes LRESULT

syntax keyword cppWinMacro max
syntax keyword cppWinMacro min

syntax keyword cppWinMacro MAKEWORD
syntax keyword cppWinMacro MAKELONG
syntax keyword cppWinMacro LOWORD
syntax keyword cppWinMacro HIWORD
syntax keyword cppWinMacro LOBYTE
syntax keyword cppWinMacro HIBYTE

syntax keyword cppWinTypes HWND
syntax keyword cppWinMacro HHOOK
syntax keyword cppWinTypes HEVENT

syntax keyword cppWinTypes ATOM

syntax keyword cppWinTypes SPHANDLE
syntax keyword cppWinTypes LPHANDLE
syntax keyword cppWinTypes HGLOBAL
syntax keyword cppWinTypes HLOCAL
syntax keyword cppWinTypes GLOBALHANDLE
syntax keyword cppWinTypes LOCALHANDLE

syntax keyword cppWinTypes FARPROC
syntax keyword cppWinTypes NEARPROC
syntax keyword cppWinTypes PROC

syntax keyword cppWinTypes HGDIOBJ

syntax keyword cppWinTypes HKEY
syntax keyword cppWinTypes PHKEY

syntax keyword cppWinTypes HACCEL
syntax keyword cppWinTypes HBITMAP
syntax keyword cppWinTypes HBRUSH

syntax keyword cppWinTypes HCOLORSPACE
syntax keyword cppWinTypes HDC
syntax keyword cppWinTypes HGLRC
syntax keyword cppWinTypes HDESK
syntax keyword cppWinTypes HENHMETAFILE
syntax keyword cppWinTypes HFONT
syntax keyword cppWinTypes HICON
syntax keyword cppWinTypes HMENU
syntax keyword cppWinTypes HMETAFILE
syntax keyword cppWinTypes HINSTANCE
syntax keyword cppWinTypes HPALETTE
syntax keyword cppWinTypes HPEN
syntax keyword cppWinTypes HRGN
syntax keyword cppWinTypes HRSRC
syntax keyword cppWinTypes HSPRITE
syntax keyword cppWinTypes HLSURF
syntax keyword cppWinTypes HSTR
syntax keyword cppWinTypes HTASK
syntax keyword cppWinTypes HWINSTA
syntax keyword cppWinTypes HKL

syntax keyword cppWinTypes HWINEVENTHOOK

syntax keyword cppWinTypes HMONITOR
syntax keyword cppWinTypes HUMPD

syntax keyword cppWinTypes HFILE
syntax keyword cppWinTypes HICON 
syntax keyword cppWinTypes HFILE
syntax keyword cppWinTypes HCURSOR

syntax keyword cppWinTypes COLORREF
syntax keyword cppWinTypes LPCOLORREF

syntax keyword cppWinMacro HFILE_ERROR

syntax keyword cppWinTypes RECT
syntax keyword cppWinTypes PRECT
syntax keyword cppWinTypes NPRECT
syntax keyword cppWinTypes LPRECT

syntax keyword cppWinTypes LPCRECT

syntax keyword cppWinTypes RECTL
syntax keyword cppWinTypes PRECTL
syntax keyword cppWinTypes LPRECTL

syntax keyword cppWinTypes LPCRECTL

syntax keyword cppWinTypes POINT
syntax keyword cppWinTypes PPOINT
syntax keyword cppWinTypes NPPOINT
syntax keyword cppWinTypes LPPOINT

syntax keyword cppWinTypes POINTL
syntax keyword cppWinTypes PPOINTL

syntax keyword cppWinTypes SIZE
syntax keyword cppWinTypes PSIZE
syntax keyword cppWinTypes LPSIZE

syntax keyword cppWinTypes SIZEL
syntax keyword cppWinTypes PSIZEL
syntax keyword cppWinTypes LPSIZEL

syntax keyword cppWinTypes POINTS
syntax keyword cppWinTypes PPOINTS
syntax keyword cppWinTypes LPPOINTS

syntax keyword cppWinTypes FILETIME
syntax keyword cppWinTypes PFILETIME
syntax keyword cppWinTypes LPFILETIME

syntax keyword cppWinConstant DM_UPDATE
syntax keyword cppWinConstant DM_COPY
syntax keyword cppWinConstant DM_PROMPT
syntax keyword cppWinConstant DM_MODIFY

syntax keyword cppWinConstant DM_IN_BUFFER
syntax keyword cppWinConstant DM_IN_PROMPT
syntax keyword cppWinConstant DM_OUT_BUFFER
syntax keyword cppWinConstant DM_OUT_DEFAULT

syntax keyword cppWinConstant DC_FIELDS
syntax keyword cppWinConstant DC_PAPERS
syntax keyword cppWinConstant DC_PAPERSIZE
syntax keyword cppWinConstant DC_MINEXTENT
syntax keyword cppWinConstant DC_MAXEXTENT
syntax keyword cppWinConstant DC_BINS
syntax keyword cppWinConstant DC_DUPLEX
syntax keyword cppWinConstant DC_SIZE
syntax keyword cppWinConstant DC_EXTRA
syntax keyword cppWinConstant DC_VERSION
syntax keyword cppWinConstant DC_DRIVER
syntax keyword cppWinConstant DC_BINNAMES
syntax keyword cppWinConstant DC_ENUMRESOLUTIONS
syntax keyword cppWinConstant DC_FILEDEPENDENCIES
syntax keyword cppWinConstant DC_TRUETYPE
syntax keyword cppWinConstant DC_PAPERNAMES
syntax keyword cppWinConstant DC_ORIENTATION
syntax keyword cppWinConstant DC_COPIES

syntax keyword cppWinTypes HRESULT

"============================================================================================

hi link cppWinTypes Typedef
hi link cppWinConstant Constant
