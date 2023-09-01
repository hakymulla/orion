use array::ArrayTrait;
use orion::operators::tensor::core::{TensorTrait, Tensor};
use orion::numbers::fixed_point::core::{FixedTrait};
use orion::numbers::FP8x23;
use orion::operators::tensor::implementations::tensor_fp8x23::Tensor_fp8x23;

fn output_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 6990506, sign: false });
    data.append(FP8x23 { mag: 6291456, sign: true });
    data.append(FP8x23 { mag: 6291456, sign: false });
    data.append(FP8x23 { mag: 6710886, sign: true });

    
    TensorTrait::new(shape.span(), data.span())
}