CXX = g++
CXXFLAGS = -std=c++11 -Wall -O3 -fopenmp
LDFLAGS = -lz -lspoa
LIBDIR := -L.

SRCS = msaLWTest.cpp
OBJS = $(SRCS:.cpp=.o)
TARGET = testMSA

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $(TARGET) $(LDFLAGS) 

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)
