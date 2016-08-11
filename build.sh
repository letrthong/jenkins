echo "Hello world"

FILE=libgtest.a

if [ -f "$FILE" ];
then
  	 echo "File $FILE exist."
else
	cd gtest
	mkdir build
	cd build
	cmake ..
	cd  ..
	./configure
	make clean
	make

	cp ./lib/.libs/libgtest.a  ../
	cp ./lib/.libs/libgtest_main.a  ../
	make clean
	git add *.a
	git clean -d -f
	git checkout -- .
fi


make
./a.out  --gtest_output="xml:report.xml"

#Clean up
rm -f *~  *.o *.out


