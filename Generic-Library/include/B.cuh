//
// Created by jgibson37 on 2/10/20.
//

#ifndef CUDA_CRTP_B_CUH
#define CUDA_CRTP_B_CUH

#include "A.cuh"

typedef struct {

} B_params;

template<class CLASS_T = void, class PARAMS_T = B_params>
class B : public A< B<CLASS_T, PARAMS_T>, PARAMS_T> {
public:
  B() {
    std::cout << __PRETTY_FUNCTION__ << std::endl;
  }

  ~B() {
    if(this->GPUMemStatus_) {
      std::cout << __PRETTY_FUNCTION__ << std::endl;
      this->GPUMemStatus_ = false;
    }
  }
};

#endif //CUDA_CRTP_B_CUH
