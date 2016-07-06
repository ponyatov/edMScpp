log.log: ./exe.exe
	./exe.exe > $@ && tail $(TAIL) $@
C = cpp.cpp
H = hpp.hpp
L =
CXXFLAGS += -Wall -Wpedantic -Werror
./exe.exe: $(C) $(H) Makefile
	$(CXX) $(CXXFLAGS) -o $@ $(C) $(L)