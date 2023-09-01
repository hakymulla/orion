use array::ArrayTrait;

use orion::operators::tensor::core::{TensorTrait, Tensor};
use orion::numbers::fixed_point::core::{FixedTrait};
use orion::operators::tensor::implementations::tensor_fp8x23::Tensor_fp8x23;use orion::numbers::FP8x23;


fn input_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 545259520, sign: true });
    data.append(FP8x23 { mag: 763363328, sign: true });
    data.append(FP8x23 { mag: 679477248, sign: false });
    data.append(FP8x23 { mag: 343932928, sign: true });

    
    TensorTrait::new(shape.span(), data.span())
}