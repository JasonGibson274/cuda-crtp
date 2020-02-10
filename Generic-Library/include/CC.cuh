//
// Created by jgibson37 on 2/10/20.
//

#ifndef CUDA_CRTP_CC_CUH
#define CUDA_CRTP_CC_CUH

#include "B.cuh"

class CC : public BB<CC> {
public:
  CC() {
    std::cout << __PRETTY_FUNCTION__ << std::endl;
  }

  ~CC() {
    if(GPUMemStatus_) {
      std::cout << __PRETTY_FUNCTION__ << std::endl;
      GPUMemStatus_ = false;
    }
  }
};

#endif //CUDA_CRTP_CC_CUH
