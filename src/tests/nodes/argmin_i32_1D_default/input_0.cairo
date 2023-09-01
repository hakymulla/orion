use array::ArrayTrait;
use orion::operators::tensor::core::{TensorTrait, Tensor};

use orion::operators::tensor::implementations::tensor_i32_fp16x16::Tensor_i32_fp16x16;
use orion::numbers::{i32, FP16x16};

fn input_0() -> Tensor<i32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(i32 { mag: 10, sign: true });
    data.append(i32 { mag: 34, sign: true });
    data.append(i32 { mag: 18, sign: false });

    
    TensorTrait::new(shape.span(), data.span())
}