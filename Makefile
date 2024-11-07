CXX=clang++ -std=c++17
CFLAGS= -g -O3 `llvm-config --cppflags --ldflags --system-libs --libs all` \
-Wno-unused-function -Wno-unknown-warning-option -fno-rtti
LDFLAGS=-lpsapi -lshell32 -lole32 -luuid -ladvapi32 -lws2_32

mccomp: mccomp.cpp
	$(CXX) mccomp.cpp $(CFLAGS) $(LDFLAGS) -o mccomp -fuse-ld=lld-link

clean:
	rm -rf mccomp 
