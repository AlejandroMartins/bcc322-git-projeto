
#include <iostream>
#include <cassert> 
#include "bib.h"
using namespace std;

int main() {
    
    cout << "Testando fatorial(5)..." << endl;
    assert(fatorial(5) == 120);

    cout << "Testando fatorial(0)..." << endl;
    assert(fatorial(0) == 1);

    cout << "Testando fatorial(1)..." << endl;
    assert(fatorial(1) == 1);

    cout << "Todos os testes passaram!" << endl;
    return 0;
}