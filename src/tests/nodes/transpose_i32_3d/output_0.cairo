use array::ArrayTrait;
use orion::operators::tensor::core::{TensorTrait, Tensor};

use orion::operators::tensor::implementations::tensor_i32_fp16x16::Tensor_i32_fp16x16;
use orion::numbers::{i32, FP16x16};

fn output_0() -> Tensor<i32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(i32 { mag: 26, sign: false });
    data.append(i32 { mag: 73, sign: false });
    data.append(i32 { mag: 55, sign: false });
    data.append(i32 { mag: 82, sign: false });
    data.append(i32 { mag: 57, sign: false });
    data.append(i32 { mag: 92, sign: false });
    data.append(i32 { mag: 89, sign: true });
    data.append(i32 { mag: 70, sign: false });

    
    TensorTrait::new(shape.span(), data.span())
}