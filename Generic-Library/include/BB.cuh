//
// Created by jgibson37 on 2/10/20.
//

#ifndef CUDA_CRTP_BB_CUH
#define CUDA_CRTP_BB_CUH

#include "A.cuh"

template<class CLASS_T = void>
class BB : public A<BB<CLASS_T>> {
public:
  BB() {
    std::cout << __PRETTY_FUNCTION__ << std::endl;
  }

  ~BB() {
    if(this->GPUMemStatus_) {
      std::cout << __PRETTY_FUNCTION__ << std::endl;
      this->GPUMemStatus_ = false;
    }
  }
};

#endif //CUDA_CRTP_BB_CUH
