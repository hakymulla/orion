use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP16x16Tensor, FP16x16TensorSub};
use orion::numbers::{FixedTrait, FP16x16};

fn output_0() -> Tensor<FP16x16> {
    let mut shape = ArrayTrait::<usize>::new();

    let mut data = ArrayTrait::new();
    data.append(FP16x16 { mag: 98304, sign: false });
    TensorTrait::new(shape.span(), data.span())
}
