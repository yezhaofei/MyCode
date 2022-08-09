CXX=g++
CXXFLAGS=-g -O0 -Wall -std=c++17

Cpps_root = $(wildcard *.cpp)
Objs_root = $(Cpps_root:%.cpp=%.o)
Objs = $(Objs_root)

TestServer: $(Objs)
	$(CXX) $(CXXFLAGS) $< -o $@
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm TestServer *.o