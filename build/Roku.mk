ROKU_PLATFORM = $(ROKU_NDK)/platforms/Roku2
ROKU_TOOLCHAIN := $(ROKU_PLATFORM)/toolchain
ROKU_TOOLPREFIX := arm-linux
CXX = $(ROKU_TOOLCHAIN)/bin/$(ROKU_TOOLPREFIX)-g++
AR = $(ROKU_TOOLCHAIN)/bin/$(ROKU_TOOLPREFIX)-ar

CFLAGS = \
-I../../dist/system_wrappers \
-D_FILE_OFFSET_BITS=64 \
-mcpu=arm1176jzf-s \
-Wno-psabi \
-ffunction-sections \
-fdata-sections \
-fvisibility=hidden \
-Wall \
-DMOZ_GLUE_IN_PROGRAM \
-DMOZILLA_MEDIA_STANDALONE \
-DUSE_FAKE_MEDIA_STREAMS \
-DUSE_FAKE_PCOBSERVER \
-DAB_CD=en-US \
-DNO_NSPR_10_SUPPORT \
-fPIC \
-DBUILD_PLATFORM_ROKU2 \
-DROKU \
-DLINUX \
-idirafter $(ROKU_PLATFORM)/include \
-idirafter $(ROKU_PLATFORM)/usr/include \
-DMOZILLA_CLIENT \
-MD \
-MP \
-DBUILD_PLATFORM_ROKU2 \
-Wall \
-Wpointer-arith \
-Woverloaded-virtual \
-Werror=int-to-pointer-cast \
-Werror=type-limits \
-Wempty-body \
-Wsign-compare \
-Wno-invalid-offsetof \
-fvisibility-inlines-hidden \
-mcpu=arm1176jzf-s \
-Wno-psabi \
-Wno-uninitialized \
-Wno-type-limits \
-U_FORTIFY_SOURCE \
-fno-short-enums \
-fno-strict-aliasing \
-fno-rtti \
-fno-exceptions \
-fno-math-errno \
-std=gnu++0x \
-pthread \
-pipe \
-DNDEBUG \
-DTRIMMED \
-c \
-g \
-O \
-fomit-frame-pointer

LFLAGS = \
-fvisibility-inlines-hidden \
-Wl,--allow-shlib-undefined \
-L$(GECKO_OBJ)/dist/lib \
-L$(ROKU_PLATFORM)/lib \
-L$(ROKU_PLATFORM)/usr/lib \
-L$(ROKU_PLATFORM)/toolchain/arm-brcm-linux-gnueabi/sys-root/usr/lib \
-Wl,-z,noexecstack \
-Wl,-z,text \
-Wl,--build-id \
-lssl \
-lcryptohi \
-lplc4 \
-lnspr4 \
-lcertdb \
-lcerthi \
-lpkixpki \
-lpkixtop \
-lpkixchecker \
-lpkixstore \
-lpkixcrlsel \
-lpkixpki \
-lpkixresults \
-lpkixutil \
-lpkixparams \
-lpkixcertsel \
-lpkixsystem \
-lpkixchecker \
-lpkixmodule \
-lnsspki \
-lnssdev \
-lnssb \
-lnss \
-lpk11wrap \
-lcerthi \
-lnssutil \
-lplds4 \
-fvisibility-inlines-hidden \
-Wl,--gc-sections \
-Wl,--copy-dt-needed-entries \
-Wl,-rpath,\$$ORIGIN/./lib \
-Wl,-rpath-link,$(ROKU_PLATFORM)/usr/lib \
-Wl,-Bdynamic -lpthread \
-Wl,-Bdynamic -lc\
-Wl,-Bdynamic -lrt \
-Wl,-Bdynamic -lRokuNDK \
-Wl,-Bdynamic -lEGL \
-Wl,-Bdynamic -lGLESv2 \
-Wl,--no-as-needed \
-rdynamic \
-lmozalloc \
-ldl

