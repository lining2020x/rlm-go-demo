package license

/*
#cgo CFLAGS: -I"${SRCDIR}/rlm/include"
#cgo LDFLAGS: -lrlm -lstdc++ -L"${SRCDIR}/rlm/lib"

#include "rlm.h"
*/
import "C"

func Hello() {
	C.rlm_hello()
}

func Checkin() {
	C.rlm_checkin()
}

func Checkout() {
	C.rlm_checkout()
}
