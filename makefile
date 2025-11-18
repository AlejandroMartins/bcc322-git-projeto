
DLL:
	g++ -std=c++11 -Wall -Iinclude -shared -o bin/bib.dll src/bib.cpp

BUILD_APP: DLL
	g++ -std=c++11 -Wall -Iinclude src/main.cpp -Lbin -lbib -o bin/app.exe

APP: BUILD_APP
	./bin/app.exe

BUILD_TEST: DLL
	g++ -std=c++11 -Wall -Iinclude test/main.cpp -Lbin -lbib -o bin/testeRegressivo.exe

TEST: BUILD_TEST
	./bin/testeRegressivo.exe
	
CLEAN: 
	rm -f bin/*.o
	rm -f bin/*.exe
	rm -f bin/*.dll
