//
// Created by jgibson37 on 2/10/20.
//

#ifndef CUDA_CRTP_A_CUH
#define CUDA_CRTP_A_CUH

#include <iostream>

template<class CLASS_T, class PARAMS_T>
class A {
public:

  A() {
    std::cout << __PRETTY_FUNCTION__ << std::endl;
  }

  ~A() {
    if(GPUMemStatus_) {
      std::cout << __PRETTY_FUNCTION__ << std::endl;
      GPUMemStatus_ = false;
    }
  }

  void setParams(PARAMS_T params) {
    std::cout << __PRETTY_FUNCTION__ << std::endl;
    this->params_ = params;
  }

  void GPUSetup() {
    std::cout << __PRETTY_FUNCTION__ << std::endl;
    GPUMemStatus_ = true;
  }


protected:
  CLASS_T* d_;
  PARAMS_T params_;

  // false means not allocated on the GPU, true means allocated on the GPU
  bool GPUMemStatus_ = false;
};

#endif //CUDA_CRTP_A_CUH
