use array::ArrayTrait;

use orion::operators::tensor::core::{TensorTrait, Tensor};
use orion::numbers::fixed_point::core::{FixedTrait};
use orion::operators::tensor::implementations::tensor_fp16x16::Tensor_fp16x16;
use orion::numbers::FP16x16;


fn output_0() -> Tensor<FP16x16> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(5);

    let mut data = ArrayTrait::new();
    data.append(FP16x16 { mag: 983040, sign: false });
    data.append(FP16x16 { mag: 917504, sign: false });
    data.append(FP16x16 { mag: 786432, sign: false });
    data.append(FP16x16 { mag: 589824, sign: false });
    data.append(FP16x16 { mag: 327680, sign: false });

    
    TensorTrait::new(shape.span(), data.span())
}