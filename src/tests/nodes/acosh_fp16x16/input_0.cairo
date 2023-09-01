use array::ArrayTrait;

use orion::operators::tensor::core::{TensorTrait, Tensor};
use orion::numbers::fixed_point::core::{FixedTrait};
use orion::operators::tensor::implementations::tensor_fp16x16::Tensor_fp16x16;
use orion::numbers::FP16x16;


fn input_0() -> Tensor<FP16x16> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(FP16x16 { mag: 141514, sign: false });
    data.append(FP16x16 { mag: 155360, sign: false });
    data.append(FP16x16 { mag: 119042, sign: false });
    data.append(FP16x16 { mag: 312767, sign: false });

    
    TensorTrait::new(shape.span(), data.span())
}