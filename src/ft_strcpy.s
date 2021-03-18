;char *ft_strcpy(char * dst, const char * src);

global		_ft_strcpy

section	.text
_ft_strcpy:
			xor rcx, rcx			; rcx = 0
.loop:
			cmp byte[rsi + rcx], 0	; src[rcx] == '\0'?
			jz .end					; if (src[rcx] == '\0') -> return
			mov dl, [rsi + rcx]		; dl = src[rcx]
			mov [rdi + rcx], dl		; dst[rcx] = dl
			inc rcx					; rcx++
.end:
			mov rax, rdi
			ret