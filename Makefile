CXX = g++
CXXFLAGS = -std=c++11 -Wall

TARGET = calculator
LIBRARY = libcalculator.a

SRCS = calculator.cpp main.cpp
OBJS = $(SRCS:.cpp=.o)

all: $(TARGET) $(LIBRARY)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

$(LIBRARY): calculator.o
	ar rcs $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET) $(LIBRARY)
