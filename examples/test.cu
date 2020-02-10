//
// Created by jgibson37 on 2/10/20.
//

#include "../Generic-Library/include/A.cuh"
#include "../Generic-Library/include/B.cuh"
#include "../Generic-Library/include/C.cuh"
//#include "../Generic-Library/include/BB.cuh"
//#include "../Generic-Library/include/CC.cuh"
#include <iostream>

int main() {
  //std::cout << "starting the test A" << std::endl;
  //A a;
  //std::cout << "ending the test A" << std::endl;

  std::cout << "starting the test B" << std::endl;
  {
    B<> b;
    b.GPUSetup();
    b.setParams(B_params());
  }
  std::cout << "ending the test B\n" << std::endl;

  std::cout << "starting the test C" << std::endl;
  {
    C c;
    c.GPUSetup();
    c.setParams(C_params());
  }
  std::cout << "ending the test C\n" << std::endl;

  /*
  std::cout << "starting the test BB" << std::endl;
  {
    BB<> b;
    b.GPUSetup();
  }
  std::cout << "ending the test BB\n" << std::endl;

  std::cout << "starting the test CC" << std::endl;
  {
    CC c;
    c.GPUSetup();
  }
  std::cout << "ending the test CC\n" << std::endl;
   */
}
