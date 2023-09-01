use array::ArrayTrait;
use orion::operators::tensor::core::{TensorTrait, Tensor};

use orion::operators::tensor::implementations::tensor_i32_fp16x16::Tensor_i32_fp16x16;
use orion::numbers::{i32, FP16x16};

fn input_0() -> Tensor<i32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(i32 { mag: 12, sign: false });
    data.append(i32 { mag: 15, sign: false });
    data.append(i32 { mag: 82, sign: false });
    data.append(i32 { mag: 25, sign: true });

    
    TensorTrait::new(shape.span(), data.span())
}