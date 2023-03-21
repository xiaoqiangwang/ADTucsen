include /ioc/tools/driver.makefile
BUILDCLASSES = WIN32 Linux
ARCH_FILTER = windows-x64 %-x86_64

SOURCES += tucsenApp/src/tucsen.cpp

DBDS += tucsenApp/src/tucsenSupport.dbd

USR_CPPFLAGS_WIN32 += -D_WIN64
USR_INCLUDES += -I ../tucsenSupport


LIBOBJS_WIN32 += tucsenSupport/os/windows-x64/TUCam.lib
SHRLIBS_WIN32 += tucsenSupport/os/windows-x64/TUCam.dll

USR_LDFLAGS_Linux += -L../tucsenSupport/os/linux-x86_64
SHRLIBS_Linux += tucsenSupport/os/linux-x86_64/libTUCam.so.1
USR_SYS_LIBS_Linux += TUCam

TEMPLATES += tucsenApp/Db/tucsen.template
TEMPLATES += tucsenApp/Db/tucsen_settings.req

QT += tucsenApp/op/ui/autoconvert/Tucsen.ui
QT += tucsenApp/op/ui/autoconvert/TucsenMore.ui
