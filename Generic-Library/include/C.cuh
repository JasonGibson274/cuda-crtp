//
// Created by jgibson37 on 2/10/20.
//

#ifndef CUDA_CRTP_C_CUH
#define CUDA_CRTP_C_CUH

#include "B.cuh"

typedef struct {

} C_params;

class C : public B<C, C_params> {
public:
  C() {
    std::cout << __PRETTY_FUNCTION__ << std::endl;
  }

  ~C() {
    if(GPUMemStatus_) {
      std::cout << __PRETTY_FUNCTION__ << std::endl;
      GPUMemStatus_ = false;
    }
  }
};

#endif //CUDA_CRTP_C_CUH
