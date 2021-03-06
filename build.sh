
ROOT=$PWD
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

	cp -f ./lib/.libs/libgtest.a  ../
	cp -f ./lib/.libs/libgtest_main.a  ../
	make clean
fi

cd $ROOT
make
./a.out  --gtest_output="xml:report.xml"

#Clean up
rm -f *~  *.o *.out

echo "Build successfully"
#exit 1

