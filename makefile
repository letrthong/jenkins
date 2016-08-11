#**********************************************************
#
#Creator    : Thong LT
#Email      : letrthong@gmail.com
#Website : http://letrthong.blogspot.com
#
#**********************************************************/
CXX=g++ 

LIBS= ./libgtest.a  ./libgtest_main.a  -pthread 
 
INCS= -I./gtest/include



OBJS= mytest.o  

Rebuild= *.cpp


all: $(OBJS) 
	g++ -o a.out  testmain.cpp  $(OBJS) $(LIBS) $(INCS)


.cpp.o:   $(Rebuild)
	$(CXX)  -c $< -o $@ $(INCS)

clean:
	rm gtest *.o 


