#SingleInstance Force
#UseHook On

CapsLock & k::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{Up}
Else, SendInput {Blind}k
Return

*k::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{Up}
Else, SendInput {Blind}k
Return

CapsLock & j::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{Down}
Else, SendInput {Blind}j
Return

*j::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{Down}
Else, SendInput {Blind}j
Return

CapsLock & h::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{Left}
Else, SendInput {Blind}h
Return

*h::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{Left}
Else, SendInput {Blind}h
Return

CapsLock & l::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{Right}
Else, SendInput {Blind}l
Return

*l::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{Right}
Else, SendInput {Blind}l
Return
