use array::ArrayTrait;

use orion::operators::tensor::core::{TensorTrait, Tensor};
use orion::numbers::fixed_point::core::{FixedTrait};
use orion::operators::tensor::implementations::tensor_fp8x23::Tensor_fp8x23;use orion::numbers::FP8x23;


fn output_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 8388608, sign: false });
    data.append(FP8x23 { mag: 16777216, sign: false });
    data.append(FP8x23 { mag: 25165824, sign: false });
    data.append(FP8x23 { mag: 41943040, sign: false });
    data.append(FP8x23 { mag: 58720256, sign: false });
    data.append(FP8x23 { mag: 75497472, sign: false });

    
    TensorTrait::new(shape.span(), data.span())
}