use array::ArrayTrait;

use orion::operators::tensor::core::{TensorTrait, Tensor};
use orion::numbers::fixed_point::core::{FixedTrait};
use orion::operators::tensor::implementations::tensor_fp8x23::Tensor_fp8x23;use orion::numbers::FP8x23;


fn input_1() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(1);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 25165824, sign: true });
    data.append(FP8x23 { mag: 16777216, sign: false });

    
    TensorTrait::new(shape.span(), data.span())
}