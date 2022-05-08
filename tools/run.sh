cd ..
export PIN_ROOT=/root/libdft64/pin/pin-3.20-98437-gf02b61307-gcc-linux
# make clean
make PIN_ROOT=/root/libdft64/pin/pin-3.20-98437-gf02b61307-gcc-linux
# > /dev/null
cd tools
g++  -DTARGET_IA32E -DHOST_IA32E -DFUND_TC_TARGETCPU=FUND_CPU_INTEL64 -DFUND_TC_HOSTCPU=FUND_CPU_INTEL64 -DTARGET_LINUX -DFUND_TC_TARGETOS=FUND_OS_LINUX -DFUND_TC_HOSTOS=FUND_OS_LINUX -g  -I/root/libdft64/pin/pin-3.20-98437-gf02b61307-gcc-linux/source/tools/Utils -O0   -o obj-intel64/mini_test.exe mini_test.cpp  -no-pie   -Wl,--as-needed -lm -ldl -lpthread
cp /root/libdft64/tools/obj-intel64/mini_test.exe /root/libdft64/pin/pin-3.20-98437-gf02b61307-gcc-linux/bin/minitest
objdump -S -d -mi386:x86-64:intel /root/libdft64/tools/obj-intel64/mini_test.exe > /root/libdft64/tools/obj-intel64/mini_test.asm
objdump -j .text -l -C -S -d -mi386:x86-64:intel /root/libdft64/tools/obj-intel64/track.so > /root/libdft64/tools/obj-intel64/track.asm

/root/libdft64/pin/pin-3.20-98437-gf02b61307-gcc-linux/pin -pause_tool 25 -t obj-intel64/track.so  -- obj-intel64/mini_test.exe cur_input